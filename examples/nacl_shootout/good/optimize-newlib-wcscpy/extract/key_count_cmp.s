  .text
  .globl key_count_cmp
  .type key_count_cmp, @function

#! file-offset 0x635a0
#! rip-offset  0x235a0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode                
.key_count_cmp:                #        0x235a0  0      OPC=<label>           
  movl %edi, %edi              #  1     0x235a0  2      OPC=movl_r32_r32      
  movl %esi, %esi              #  2     0x235a2  2      OPC=movl_r32_r32      
  movl %edi, %edi              #  3     0x235a4  2      OPC=movl_r32_r32      
  movl 0x8(%r15,%rdi,1), %edx  #  4     0x235a6  5      OPC=movl_r32_m32      
  movl %esi, %esi              #  5     0x235ab  2      OPC=movl_r32_r32      
  movl 0x8(%r15,%rsi,1), %eax  #  6     0x235ad  5      OPC=movl_r32_m32      
  cmpl %eax, %edx              #  7     0x235b2  2      OPC=cmpl_r32_r32      
  je .L_235e0                  #  8     0x235b4  2      OPC=je_label          
  subl %edx, %eax              #  9     0x235b6  2      OPC=subl_r32_r32      
  popq %r11                    #  10    0x235b8  2      OPC=popq_r64_1        
  nop                          #  11    0x235ba  1      OPC=nop               
  nop                          #  12    0x235bb  1      OPC=nop               
  nop                          #  13    0x235bc  1      OPC=nop               
  nop                          #  14    0x235bd  1      OPC=nop               
  nop                          #  15    0x235be  1      OPC=nop               
  nop                          #  16    0x235bf  1      OPC=nop               
  andl $0xffffffe0, %r11d      #  17    0x235c0  7      OPC=andl_r32_imm32    
  nop                          #  18    0x235c7  1      OPC=nop               
  nop                          #  19    0x235c8  1      OPC=nop               
  nop                          #  20    0x235c9  1      OPC=nop               
  nop                          #  21    0x235ca  1      OPC=nop               
  addq %r15, %r11              #  22    0x235cb  3      OPC=addq_r64_r64      
  jmpq %r11                    #  23    0x235ce  3      OPC=jmpq_r64          
  nop                          #  24    0x235d1  1      OPC=nop               
  nop                          #  25    0x235d2  1      OPC=nop               
  nop                          #  26    0x235d3  1      OPC=nop               
  nop                          #  27    0x235d4  1      OPC=nop               
  nop                          #  28    0x235d5  1      OPC=nop               
  nop                          #  29    0x235d6  1      OPC=nop               
  nop                          #  30    0x235d7  1      OPC=nop               
  nop                          #  31    0x235d8  1      OPC=nop               
  nop                          #  32    0x235d9  1      OPC=nop               
  nop                          #  33    0x235da  1      OPC=nop               
  nop                          #  34    0x235db  1      OPC=nop               
  nop                          #  35    0x235dc  1      OPC=nop               
  nop                          #  36    0x235dd  1      OPC=nop               
  nop                          #  37    0x235de  1      OPC=nop               
  nop                          #  38    0x235df  1      OPC=nop               
  nop                          #  39    0x235e0  1      OPC=nop               
  nop                          #  40    0x235e1  1      OPC=nop               
  nop                          #  41    0x235e2  1      OPC=nop               
  nop                          #  42    0x235e3  1      OPC=nop               
  nop                          #  43    0x235e4  1      OPC=nop               
  nop                          #  44    0x235e5  1      OPC=nop               
  nop                          #  45    0x235e6  1      OPC=nop               
.L_235e0:                      #        0x235e7  0      OPC=<label>           
  movl $0xffffffff, %eax       #  46    0x235e7  6      OPC=movl_r32_imm32_1  
  movl %esi, %esi              #  47    0x235ed  2      OPC=movl_r32_r32      
  movq (%r15,%rsi,1), %rdx     #  48    0x235ef  4      OPC=movq_r64_m64      
  movl %edi, %edi              #  49    0x235f3  2      OPC=movl_r32_r32      
  cmpq %rdx, (%r15,%rdi,1)     #  50    0x235f5  4      OPC=cmpq_m64_r64      
  jb .L_23600                  #  51    0x235f9  2      OPC=jb_label          
  seta %al                     #  52    0x235fb  3      OPC=seta_r8           
  movzbl %al, %eax             #  53    0x235fe  3      OPC=movzbl_r32_r8     
  nop                          #  54    0x23601  1      OPC=nop               
  nop                          #  55    0x23602  1      OPC=nop               
  nop                          #  56    0x23603  1      OPC=nop               
  nop                          #  57    0x23604  1      OPC=nop               
  nop                          #  58    0x23605  1      OPC=nop               
  nop                          #  59    0x23606  1      OPC=nop               
  nop                          #  60    0x23607  1      OPC=nop               
.L_23600:                      #        0x23608  0      OPC=<label>           
  popq %r11                    #  61    0x23608  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d      #  62    0x2360a  7      OPC=andl_r32_imm32    
  nop                          #  63    0x23611  1      OPC=nop               
  nop                          #  64    0x23612  1      OPC=nop               
  nop                          #  65    0x23613  1      OPC=nop               
  nop                          #  66    0x23614  1      OPC=nop               
  addq %r15, %r11              #  67    0x23615  3      OPC=addq_r64_r64      
  jmpq %r11                    #  68    0x23618  3      OPC=jmpq_r64          
  nop                          #  69    0x2361b  1      OPC=nop               
  nop                          #  70    0x2361c  1      OPC=nop               
  nop                          #  71    0x2361d  1      OPC=nop               
  nop                          #  72    0x2361e  1      OPC=nop               
  nop                          #  73    0x2361f  1      OPC=nop               
  nop                          #  74    0x23620  1      OPC=nop               
  nop                          #  75    0x23621  1      OPC=nop               
  nop                          #  76    0x23622  1      OPC=nop               
  nop                          #  77    0x23623  1      OPC=nop               
  nop                          #  78    0x23624  1      OPC=nop               
  nop                          #  79    0x23625  1      OPC=nop               
  nop                          #  80    0x23626  1      OPC=nop               
  nop                          #  81    0x23627  1      OPC=nop               
  nop                          #  82    0x23628  1      OPC=nop               
  nop                          #  83    0x23629  1      OPC=nop               
  nop                          #  84    0x2362a  1      OPC=nop               
  nop                          #  85    0x2362b  1      OPC=nop               
  nop                          #  86    0x2362c  1      OPC=nop               
  nop                          #  87    0x2362d  1      OPC=nop               
  nop                          #  88    0x2362e  1      OPC=nop               
                                                                              
.size key_count_cmp, .-key_count_cmp

