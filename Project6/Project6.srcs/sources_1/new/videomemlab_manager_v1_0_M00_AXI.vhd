library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity videomemlab_manager_v1_0_M00_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- The master requires a target slave base address.
    -- The master will initiate read and write transactions on the slave with base address specified here as a parameter.
		C_M_PS2_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M_VIDEOMEM_BASE_ADDR	: std_logic_vector	:= x"80000000";
		-- Width of M_AXI address bus. 
    -- The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		-- Width of M_AXI data bus. 
    -- The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
		C_M_AXI_DATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
        IRQ_I : in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- AXI clock signal
		M_AXI_ACLK	: in std_logic;
		-- AXI active low reset signal
		M_AXI_ARESETN	: in std_logic;
		-- Master Interface Write Address Channel ports. Write address (issued by master)
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type.
    -- This signal indicates the privilege and security level of the transaction,
    -- and whether the transaction is a data access or an instruction access.
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		-- Write address valid. 
    -- This signal indicates that the master signaling valid write address and control information.
		M_AXI_AWVALID	: out std_logic;
		-- Write address ready. 
    -- This signal indicates that the slave is ready to accept an address and associated control signals.
		M_AXI_AWREADY	: in std_logic;
		-- Master Interface Write Data Channel ports. Write data (issued by master)
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. 
    -- This signal indicates which byte lanes hold valid data.
    -- There is one write strobe bit for each eight bits of the write data bus.
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		-- Write valid. This signal indicates that valid write data and strobes are available.
		M_AXI_WVALID	: out std_logic;
		-- Write ready. This signal indicates that the slave can accept the write data.
		M_AXI_WREADY	: in std_logic;
		-- Master Interface Write Response Channel ports. 
    -- This signal indicates the status of the write transaction.
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		-- Write response valid. 
    -- This signal indicates that the channel is signaling a valid write response
		M_AXI_BVALID	: in std_logic;
		-- Response ready. This signal indicates that the master can accept a write response.
		M_AXI_BREADY	: out std_logic;
		-- Master Interface Read Address Channel ports. Read address (issued by master)
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. 
    -- This signal indicates the privilege and security level of the transaction, 
    -- and whether the transaction is a data access or an instruction access.
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		-- Read address valid. 
    -- This signal indicates that the channel is signaling valid read address and control information.
		M_AXI_ARVALID	: out std_logic;
		-- Read address ready. 
    -- This signal indicates that the slave is ready to accept an address and associated control signals.
		M_AXI_ARREADY	: in std_logic;
		-- Master Interface Read Data Channel ports. Read data (issued by slave)
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the read transfer.
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is signaling the required read data.
		M_AXI_RVALID	: in std_logic;
		-- Read ready. This signal indicates that the master can accept the read data and response information.
		M_AXI_RREADY	: out std_logic
	);
end videomemlab_manager_v1_0_M00_AXI;

architecture implementation of videomemlab_manager_v1_0_M00_AXI is

	signal code, ascii : std_logic_vector(7 downto 0);
	signal shift, ctrl, alt : std_logic;

    signal current_addr : std_logic_vector(31 downto 0);
	 type state is ( INITMEM,   -- Clear the memory
	                 WAIT4IRQ,  -- Wait for interrupt from PS/2
	 				 WAIT4CODE,	-- Read scancode from PS/2
	 				 GETPIXELS1,-- Wait for pixel data to be ready
	 				 GETPIXELS2,-- Wait for pixel data to be ready
                     WAIT4MEMACK);-- write pixels to memory 

	 signal mst_exec_state  : state ; 

	constant CHARS_PER_LINE : integer := 80;
	constant LINES_PER_PAGE : integer := 40;
	constant CHARS_PER_PAGE : integer := CHARS_PER_LINE * LINES_PER_PAGE;
	constant CHAR_WIDTH : integer := 8;
	constant CHAR_HEIGHT : integer := 12;
	constant PIXELS_PER_WORD : integer := 8;
	constant BITS_PER_PIXEL : integer := 4;

	signal txtcolor, bgcolor : std_logic_vector(BITS_PER_PIXEL-1 downto 0);
	signal pixels : std_logic_vector(CHAR_WIDTH-1 downto 0);
	signal reg_pixels : std_logic_vector(CHAR_WIDTH-1 downto 0);
	signal color_pixels : std_logic_vector(31 downto 0);
	signal current_char : integer range 0 to CHARS_PER_LINE-1;
	signal current_line : integer range 0 to LINES_PER_PAGE-1;
	signal scan_line : integer range 0 to CHAR_HEIGHT;
	signal pixelnum : integer range 0 to CHAR_WIDTH-1;

	signal rst_p : std_logic;

	-- AXI4LITE signals
	--write address valid
	signal axi_awvalid	: std_logic;
	--write data valid
	signal axi_wvalid	: std_logic;
	--read address valid
	signal axi_arvalid	: std_logic;
	--read data acceptance
	signal axi_rready	: std_logic;
	--write response acceptance
	signal axi_bready	: std_logic;
	--write data
	signal axi_wdata	: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	--Asserts when there is a write response error
	signal write_resp_error	: std_logic;
	--Asserts when there is a read response error
	signal read_resp_error	: std_logic;
	--A pulse to initiate a write transaction
	signal start_single_write	: std_logic;
	--A pulse to initiate a read transaction
	signal start_single_read	: std_logic;
	--Asserts when a single beat write transaction is issued and remains asserted till the completion of write trasaction.
	signal write_issued	: std_logic;
	--Asserts when a single beat read transaction is issued and remains asserted till the completion of read trasaction.
	signal read_issued	: std_logic;
	--Registered read data
	signal reg_rdata	: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);

begin
	-- I/O Connections assignments

	current_addr <= std_logic_vector (unsigned(C_M_VIDEOMEM_BASE_ADDR) + (current_line*CHARS_PER_LINE*CHAR_HEIGHT + current_char + scan_line*CHARS_PER_LINE)*CHAR_WIDTH/PIXELS_PER_WORD);
	--slave write address
	M_AXI_AWADDR	<= current_addr;
	--AXI 4 write data
	M_AXI_WDATA	<= axi_wdata;
	M_AXI_AWPROT	<= "000";
	M_AXI_AWVALID	<= axi_awvalid;
	--Write Data(W)
	M_AXI_WVALID	<= axi_wvalid;
	--Set all byte strobes in this example
	M_AXI_WSTRB	<= "1111";
	--Write Response (B)
	M_AXI_BREADY	<= axi_bready;
	--Read Address (AR)
	M_AXI_ARADDR	<= std_logic_vector(unsigned(C_M_PS2_SLAVE_BASE_ADDR));
	M_AXI_ARVALID	<= axi_arvalid;
	M_AXI_ARPROT	<= "001";
	--Read and Read Response (R)
	M_AXI_RREADY	<= axi_rready;

	----------------------
	--Write Address Channel
	----------------------

	-- The purpose of the write address channel is to request the address and 
	-- command information for the entire transaction.  It is a single beat
	-- of information.

	-- Note for this example the axi_awvalid/axi_wvalid are asserted at the same
	-- time, and then each is deasserted independent from each other.
	-- This is a lower-performance, but simplier control scheme.

	-- AXI VALID signals must be held active until accepted by the partner.

	-- A data transfer is accepted by the slave when a master has
	-- VALID data and the slave acknoledges it is also READY. While the master
	-- is allowed to generated multiple, back-to-back requests by not 
	-- deasserting VALID, this design will add rest cycle for
	-- simplicity.

	-- Since only one outstanding transaction is issued by the user design,
	-- there will not be a collision between a new request and an accepted
	-- request on the same clock cycle. 

	  process(M_AXI_ACLK)                                                          
	  begin                                                                             
	    if (rising_edge (M_AXI_ACLK)) then                                              
	      --Only VALID signals must be deasserted during reset per AXI spec             
	      --Consider inverting then registering active-low reset for higher fmax        
	      if (M_AXI_ARESETN = '0' or mst_exec_state = WAIT4IRQ) then                                                
	        axi_awvalid <= '0';                                                         
	      else                                                                          
	        --Signal a new address/data command is available by user logic              
	        if (start_single_write = '1') then                                          
	          axi_awvalid <= '1';                                                       
	        elsif (M_AXI_AWREADY = '1' and axi_awvalid = '1') then                      
	          --Address accepted by interconnect/slave (issue of M_AXI_AWREADY by slave)
	          axi_awvalid <= '0';                                                       
	        end if;                                                                     
	      end if;                                                                       
	    end if;                                                                         
	  end process;                                                                      

	----------------------
	--Write Data Channel
	----------------------

	--The write data channel is for transfering the actual data.
	--The data generation is speific to the example design, and 
	--so only the WVALID/WREADY handshake is shown here

	   process(M_AXI_ACLK)                                                 
	   begin                                                                         
	     if (rising_edge (M_AXI_ACLK)) then                                          
	       if (M_AXI_ARESETN = '0' or mst_exec_state = WAIT4IRQ ) then                                            
	         axi_wvalid <= '0';                                                      
	       else                                                                      
	         if (start_single_write = '1') then                                      
	           --Signal a new address/data command is available by user logic        
	           axi_wvalid <= '1';                                                    
	         elsif (M_AXI_WREADY = '1' and axi_wvalid = '1') then                    
	           --Data accepted by interconnect/slave (issue of M_AXI_WREADY by slave)
	           axi_wvalid <= '0';                                                    
	         end if;                                                                 
	       end if;                                                                   
	     end if;                                                                     
	   end process;                                                                  


	------------------------------
	--Write Response (B) Channel
	------------------------------

	--The write response channel provides feedback that the write has committed
	--to memory. BREADY will occur after both the data and the write address
	--has arrived and been accepted by the slave, and can guarantee that no
	--other accesses launched afterwards will be able to be reordered before it.

	--The BRESP bit [1] is used indicate any errors from the interconnect or
	--slave for the entire write burst. This example will capture the error.

	--While not necessary per spec, it is advisable to reset READY signals in
	--case of differing reset latencies between master/slave.

	  process(M_AXI_ACLK)                                            
	  begin                                                                
	    if (rising_edge (M_AXI_ACLK)) then                                 
	      if (M_AXI_ARESETN = '0' or mst_exec_state = WAIT4IRQ) then                                   
	        axi_bready <= '0';                                             
	      else                                                             
	        if (M_AXI_BVALID = '1' and axi_bready = '0') then              
	          -- accept/acknowledge bresp with axi_bready by the master    
	          -- when M_AXI_BVALID is asserted by slave                    
	           axi_bready <= '1';                                          
	        elsif (axi_bready = '1') then                                  
	          -- deassert after one clock cycle                            
	          axi_bready <= '0';                                           
	        end if;                                                        
	      end if;                                                          
	    end if;                                                            
	  end process;                                                         
	--Flag write errors                                                    
	  write_resp_error <= (axi_bready and M_AXI_BVALID and M_AXI_BRESP(1));


	------------------------------
	--Read Address Channel
	------------------------------

	  -- A new axi_arvalid is asserted when there is a valid read address              
	  -- available by the master. start_single_read triggers a new read                
	  -- transaction                                                                   
	  process(M_AXI_ACLK)                                                              
	  begin                                                                            
	    if (rising_edge (M_AXI_ACLK)) then                                             
	      if (M_AXI_ARESETN = '0' or mst_exec_state = WAIT4IRQ) then                                               
	        axi_arvalid <= '0';                                                        
	      else                                                                         
	        if (start_single_read = '1') then                                          
	          --Signal a new read address command is available by user logic           
	          axi_arvalid <= '1';                                                      
	        elsif (M_AXI_ARREADY = '1' and axi_arvalid = '1') then                     
	        --RAddress accepted by interconnect/slave (issue of M_AXI_ARREADY by slave)
	          axi_arvalid <= '0';                                                      
	        end if;                                                                    
	      end if;                                                                      
	    end if;                                                                        
	  end process;                                                                     


	----------------------------------
	--Read Data (and Response) Channel
	----------------------------------

	--The Read Data channel returns the results of the read request 
	--The master will accept the read data by asserting axi_rready
	--when there is a valid read data available.
	--While not necessary per spec, it is advisable to reset READY signals in
	--case of differing reset latencies between master/slave.

	  process(M_AXI_ACLK)                                             
	  begin                                                                 
	    if (rising_edge (M_AXI_ACLK)) then                                  
	      if (M_AXI_ARESETN = '0' or mst_exec_state = WAIT4IRQ) then                                    
	        axi_rready <= '1';                                              
	      else                                                              
	        if (M_AXI_RVALID = '1' and axi_rready = '0') then               
	         -- accept/acknowledge rdata/rresp with axi_rready by the master
	         -- when M_AXI_RVALID is asserted by slave                      
	          axi_rready <= '1';                                            
	        elsif (axi_rready = '1') then                                   
	          -- deassert after one clock cycle                             
	          axi_rready <= '0';                                            
	        end if;                                                         
	      end if;                                                           
	    end if;                                                             
	  end process;                                                          
	                                                                        
	----------------------------------
	--User Logic
	----------------------------------

	--Data Stimulus

	-- Write data - always write the color pixels
	axi_wdata <= color_pixels;    	                                    
		                                                                                    
	  --implement master command interface state machine                                           
	  MASTER_EXECUTION_PROC:process(M_AXI_ACLK)                                                         
           	variable scancode : std_logic_vector(7 downto 0);
           	variable extended, keyup : std_logic;
            variable shift_l_down, ctrl_l_down, alt_l_down : std_logic; 
            variable shift_r_down, ctrl_r_down, alt_r_down : std_logic;
            variable next_state : state;
	  begin                                                                                             
	    if (rising_edge (M_AXI_ACLK)) then                                                              
	      if (M_AXI_ARESETN = '0' ) then                                                                
	        -- reset condition                                                                          
	        -- All the signals are ed default values under reset condition                              
	        mst_exec_state  <= INITMEM;                                                            
	        start_single_write <= '0';                                                                  
	        write_issued   <= '0';                                                                      
	        start_single_read  <= '0';                                                                  
	        read_issued  <= '0';                                                                        
			current_char <= 0;
            current_line <= 0;
            scan_line <= 0;
            reg_pixels <= X"00";
            shift_l_down := '0';
            ctrl_l_down := '0';
            alt_l_down := '0';
            shift_r_down := '0';
            ctrl_r_down := '0';
            alt_r_down := '0';
            keyup := '0';
            extended := '0';
	      else                                                                                          
	        -- state transition                                                                         
	        case (mst_exec_state) is                                                                    
	                                                                                                    
	          when INITMEM =>  
				-- This state is responsible for doing write transactions to                       
                -- clear memory. Write transactions will be issued continuously.                                          
                if (M_AXI_BVALID = '1' and axi_bready='1') then                                                             
                    if ( scan_line = CHAR_HEIGHT-1 ) then
                        scan_line <= 0;
                        if ( current_char = CHARS_PER_LINE-1 ) then
                            current_char <= 0;
                            if ( current_line = LINES_PER_PAGE-1 ) then
                                current_line <= 0;
                                mst_exec_state <= WAIT4IRQ;
                            else
                                current_line <= current_line + 1;
                            end if;
                        else
                            current_char <= current_char + 1;
                        end if;
                    else
                        scan_line <= scan_line + 1;
                        mst_exec_state <= INITMEM;
                    end if;
                    write_issued <= '0';
                else                                                                                    
                  mst_exec_state  <= INITMEM;

                  if (axi_awvalid = '0' and axi_wvalid = '0' and M_AXI_BVALID = '0' and                 
                    start_single_write = '0' and write_issued = '0') then          
                    start_single_write <= '1';                                                          
                    write_issued  <= '1';                                                               
                  elsif (axi_bready = '1') then                                                         
                    write_issued   <= '0';                                                              
                  else                                                                                  
                    start_single_write <= '0'; --Negate to generate a pulse                             
                  end if;                                                                               
                end if;

	          when WAIT4IRQ =>                                                                      
	            -- This state is just a pause between READ/WRITE transactions
                if ( IRQ_I = '1' ) then
    	            mst_exec_state  <= WAIT4CODE;                                                        
                end if;
	                                                                                                    
	          when WAIT4CODE =>                                                                         
	            -- This state is responsible to issue start_single_read pulse to                        
	            -- initiate a read transaction. Read transactions will be                               
	            -- issued continuously.                                           
	            -- read controller                                                                      
	            if (M_AXI_RVALID = '1' and axi_rready = '1') then
	                next_state := WAIT4IRQ;         
	                scancode := M_AXI_RDATA(7 downto 0);                                                      
                    if ( scancode = X"F0" ) then
                        keyup := '1';
                    elsif ( scancode = X"E0" ) then
                        extended := '1';
                    else
                        if ( keyup = '1' ) then
                            if ( scancode = X"59" ) then 
                                shift_r_down := '0';
                            elsif ( scancode = X"14" and extended = '1' ) then 
                                ctrl_r_down := '0';
                            elsif ( scancode = X"11" and extended = '1' ) then 
                                alt_r_down := '0';
                            elsif ( scancode = X"12" ) then
                                shift_l_down := '0';
                            elsif ( scancode = X"14" ) then 
                                ctrl_l_down := '0';
                            elsif ( scancode = X"11" ) then 
                                alt_l_down := '0';
                            end if;
                        elsif ( extended = '1' ) then
                            if ( scancode = X"14" ) then
                                ctrl_r_down := '1';
                            elsif ( scancode = X"11" ) then 
                                alt_r_down := '1';
                            end if;
                        elsif ( scancode = X"12" ) then
                            shift_l_down := '1';
                        elsif ( scancode = X"14") then
                            ctrl_l_down := '1';
                        elsif ( scancode = X"11") then
                            alt_l_down := '1';
                        elsif ( scancode = X"59" ) then
                            shift_r_down := '1';
                        else
                            next_state := GETPIXELS1;
                        end if;
    
                        keyup := '0';
                        extended := '0';
                    end if;
    
                    -- transfer variables to signals
                    mst_exec_state <= next_state;
                    shift <= shift_l_down or shift_r_down;
                    ctrl <= ctrl_l_down or ctrl_r_down;
                    alt <= alt_l_down or alt_r_down;
                    code <= scancode;
                  read_issued   <= '0';
	            else                                                                                    
	              mst_exec_state  <= WAIT4CODE;                                                         
	                                                                                                    
	              if (axi_arvalid = '0' and M_AXI_RVALID = '0' and                  
	                start_single_read = '0' and read_issued = '0') then                                 
	                start_single_read <= '1';                                                           
	                read_issued   <= '1';                                                               
	              elsif (axi_rready = '1') then                                                         
	                read_issued   <= '0';                                                               
	              else                                                                                  
	                start_single_read <= '0'; --Negate to generate a pulse                              
	              end if;                                                                               
	            end if;                                                                                 
	                                                                                                    
			when GETPIXELS1 =>
                -- wait for pixels to be ready from lookup table
                mst_exec_state <= GETPIXELS2;
    
            when GETPIXELS2 =>
                -- if the character is a carriage return, go to the next line
                pixelnum <= 0;
                if ( ascii = X"0D" ) then
                    current_char <= 0;
                    if ( current_line = LINES_PER_PAGE-1 ) then
                        current_line <= 0;
                    else
                        current_line <= current_line + 1;
                    end if;
                    mst_exec_state <= WAIT4IRQ;
                -- if the character is a back space, backup a character
                elsif ( ascii = X"08" ) then
                    if ( scan_line = 0 ) then
                        if ( current_char = 0 ) then
                            current_char <= CHARS_PER_LINE-1;
                            if ( current_line = 0 ) then
                                current_line <= 0;
                            else
                            current_line <= current_line - 1;
                            end if;
                        else
                            current_char <= current_char - 1;
                        end if;
                    end if;
                    reg_pixels <= X"00"; -- clear the character
                    mst_exec_state <= WAIT4MEMACK;
                else
                    reg_pixels <= pixels;
                    mst_exec_state <= WAIT4MEMACK;
                end if;

            when WAIT4MEMACK =>
                if (M_AXI_BVALID = '1' and axi_bready='1') then                                                             
                    write_issued   <= '0';                                                              
                    if ( scan_line = CHAR_HEIGHT-1 ) then
                        mst_exec_state <= WAIT4IRQ;
                        scan_line <= 0;
                        if ( ascii /= X"08" ) then -- increment the cursor if it wasnt a back space
                            if ( current_char = CHARS_PER_LINE-1 ) then
                                current_char <= 0;
                                if ( current_line = LINES_PER_PAGE-1 ) then
                                    current_line <= 0;
                                else
                                    current_line <= current_line + 1;
                                end if;
                            else
                                current_char <= current_char + 1;
                            end if;
                        end if;
                    else
                        scan_line <= scan_line + 1;
                        mst_exec_state <= GETPIXELS1;
                    end if;
                else                                                                                    
                  mst_exec_state  <= WAIT4MEMACK;

                  if (axi_awvalid = '0' and axi_wvalid = '0' and M_AXI_BVALID = '0' and                 
                    start_single_write = '0' and write_issued = '0') then          
                    start_single_write <= '1';                                                          
                    write_issued  <= '1';                                                               
                  elsif (axi_bready = '1') then                                                         
                    write_issued   <= '0';                                                              
                  else                                                                                  
                    start_single_write <= '0'; --Negate to generate a pulse                             
                  end if;                                                                               
                end if;
                                                                                                            
	          when others  =>                                                                           
	              mst_exec_state  <= WAIT4IRQ;                                                      
	        end case  ;                                                                                 
	      end if;                                                                                       
	    end if;                                                                                         
	  end process;
                                                                              	                                                                                                    	                                                                                                    
    -- Add user logic here

	rst_p <= not M_AXI_ARESETN;

    -- instantiate the 8x12 lookup table here
      
    -- instantiate the scancode to ascii component here
  
    -- The following steps can be done in the manager (or color pixels can be created in the VGA-subordinate.)
    -- set the text and background color here
	-- Example: 	
    -- If, axi_wdata <= color_pixels;	
	-- txtcolor <= "1111"; 
	-- bgcolor <= "0001";	--r1r0gb (for blue background)
	
    -- set the color_pixels word based on the reg_pixels byte which is a registered
    -- version of the pixels byte that comes from the lookup table.  When reg_pixels is '1', we use the
    -- text color, otherwise we use the background color
	-- Example: if signal color_pixels : std_logic_vector(31 downto 0);
	-- color_pixels(3  downto  0) <= std_logic_vector(unsigned(txtcolor) - 1) when reg_pixels(0) = '1' else bgcolor;
	-- ......
    -- color_pixels(31 downto 28) <= std_logic_vector(unsigned(txtcolor) - 8) when reg_pixels(7) = '1' else bgcolor;
	
	-- OR ----------------------------------------------------------------------------------------------------------
	
	-- If the color pixels are created in the VGA component (the size of the BRAM can be reduced)
	-- Example:
	-- axi_wdata <= X"000000"&reg_pixels; 
	-- The manager sends the data to the VGA IP component which should have two subcomponent
	-- a) a dual port BRAM and b) a VGA driver
	-- The low 8-bit data is stored in the BRAM
	-- the VGA drivers sends an address and reads the 8 bit data and can creat a 4-bit color pixel 
	-- color pixel can be created in the VGA driver after the data is stor
	
	


	-- User logic ends

end implementation;
