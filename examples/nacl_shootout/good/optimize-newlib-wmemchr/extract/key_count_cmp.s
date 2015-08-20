  .text
  .globl key_count_cmp
  .type key_count_cmp, @function

#! file-offset 0x635c0
#! rip-offset  0x235c0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode                
.key_count_cmp:                #        0x235c0  0      OPC=<label>           
  movl %edi, %edi              #  1     0x235c0  2      OPC=movl_r32_r32      
  movl %esi, %esi              #  2     0x235c2  2      OPC=movl_r32_r32      
  movl %edi, %edi              #  3     0x235c4  2      OPC=movl_r32_r32      
  movl 0x8(%r15,%rdi,1), %edx  #  4     0x235c6  5      OPC=movl_r32_m32      
  movl %esi, %esi              #  5     0x235cb  2      OPC=movl_r32_r32      
  movl 0x8(%r15,%rsi,1), %eax  #  6     0x235cd  5      OPC=movl_r32_m32      
  cmpl %eax, %edx              #  7     0x235d2  2      OPC=cmpl_r32_r32      
  je .L_23600                  #  8     0x235d4  2      OPC=je_label          
  subl %edx, %eax              #  9     0x235d6  2      OPC=subl_r32_r32      
  popq %r11                    #  10    0x235d8  2      OPC=popq_r64_1        
  nop                          #  11    0x235da  1      OPC=nop               
  nop                          #  12    0x235db  1      OPC=nop               
  nop                          #  13    0x235dc  1      OPC=nop               
  nop                          #  14    0x235dd  1      OPC=nop               
  nop                          #  15    0x235de  1      OPC=nop               
  nop                          #  16    0x235df  1      OPC=nop               
  andl $0xffffffe0, %r11d      #  17    0x235e0  7      OPC=andl_r32_imm32    
  nop                          #  18    0x235e7  1      OPC=nop               
  nop                          #  19    0x235e8  1      OPC=nop               
  nop                          #  20    0x235e9  1      OPC=nop               
  nop                          #  21    0x235ea  1      OPC=nop               
  addq %r15, %r11              #  22    0x235eb  3      OPC=addq_r64_r64      
  jmpq %r11                    #  23    0x235ee  3      OPC=jmpq_r64          
  nop                          #  24    0x235f1  1      OPC=nop               
  nop                          #  25    0x235f2  1      OPC=nop               
  nop                          #  26    0x235f3  1      OPC=nop               
  nop                          #  27    0x235f4  1      OPC=nop               
  nop                          #  28    0x235f5  1      OPC=nop               
  nop                          #  29    0x235f6  1      OPC=nop               
  nop                          #  30    0x235f7  1      OPC=nop               
  nop                          #  31    0x235f8  1      OPC=nop               
  nop                          #  32    0x235f9  1      OPC=nop               
  nop                          #  33    0x235fa  1      OPC=nop               
  nop                          #  34    0x235fb  1      OPC=nop               
  nop                          #  35    0x235fc  1      OPC=nop               
  nop                          #  36    0x235fd  1      OPC=nop               
  nop                          #  37    0x235fe  1      OPC=nop               
  nop                          #  38    0x235ff  1      OPC=nop               
  nop                          #  39    0x23600  1      OPC=nop               
  nop                          #  40    0x23601  1      OPC=nop               
  nop                          #  41    0x23602  1      OPC=nop               
  nop                          #  42    0x23603  1      OPC=nop               
  nop                          #  43    0x23604  1      OPC=nop               
  nop                          #  44    0x23605  1      OPC=nop               
  nop                          #  45    0x23606  1      OPC=nop               
.L_23600:                      #        0x23607  0      OPC=<label>           
  movl $0xffffffff, %eax       #  46    0x23607  6      OPC=movl_r32_imm32_1  
  movl %esi, %esi              #  47    0x2360d  2      OPC=movl_r32_r32      
  movq (%r15,%rsi,1), %rdx     #  48    0x2360f  4      OPC=movq_r64_m64      
  movl %edi, %edi              #  49    0x23613  2      OPC=movl_r32_r32      
  cmpq %rdx, (%r15,%rdi,1)     #  50    0x23615  4      OPC=cmpq_m64_r64      
  jb .L_23620                  #  51    0x23619  2      OPC=jb_label          
  seta %al                     #  52    0x2361b  3      OPC=seta_r8           
  movzbl %al, %eax             #  53    0x2361e  3      OPC=movzbl_r32_r8     
  nop                          #  54    0x23621  1      OPC=nop               
  nop                          #  55    0x23622  1      OPC=nop               
  nop                          #  56    0x23623  1      OPC=nop               
  nop                          #  57    0x23624  1      OPC=nop               
  nop                          #  58    0x23625  1      OPC=nop               
  nop                          #  59    0x23626  1      OPC=nop               
  nop                          #  60    0x23627  1      OPC=nop               
.L_23620:                      #        0x23628  0      OPC=<label>           
  popq %r11                    #  61    0x23628  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d      #  62    0x2362a  7      OPC=andl_r32_imm32    
  nop                          #  63    0x23631  1      OPC=nop               
  nop                          #  64    0x23632  1      OPC=nop               
  nop                          #  65    0x23633  1      OPC=nop               
  nop                          #  66    0x23634  1      OPC=nop               
  addq %r15, %r11              #  67    0x23635  3      OPC=addq_r64_r64      
  jmpq %r11                    #  68    0x23638  3      OPC=jmpq_r64          
  nop                          #  69    0x2363b  1      OPC=nop               
  nop                          #  70    0x2363c  1      OPC=nop               
  nop                          #  71    0x2363d  1      OPC=nop               
  nop                          #  72    0x2363e  1      OPC=nop               
  nop                          #  73    0x2363f  1      OPC=nop               
  nop                          #  74    0x23640  1      OPC=nop               
  nop                          #  75    0x23641  1      OPC=nop               
  nop                          #  76    0x23642  1      OPC=nop               
  nop                          #  77    0x23643  1      OPC=nop               
  nop                          #  78    0x23644  1      OPC=nop               
  nop                          #  79    0x23645  1      OPC=nop               
  nop                          #  80    0x23646  1      OPC=nop               
  nop                          #  81    0x23647  1      OPC=nop               
  nop                          #  82    0x23648  1      OPC=nop               
  nop                          #  83    0x23649  1      OPC=nop               
  nop                          #  84    0x2364a  1      OPC=nop               
  nop                          #  85    0x2364b  1      OPC=nop               
  nop                          #  86    0x2364c  1      OPC=nop               
  nop                          #  87    0x2364d  1      OPC=nop               
  nop                          #  88    0x2364e  1      OPC=nop               
                                                                              
.size key_count_cmp, .-key_count_cmp

