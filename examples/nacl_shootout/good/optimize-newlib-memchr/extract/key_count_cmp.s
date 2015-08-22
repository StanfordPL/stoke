  .text
  .globl key_count_cmp
  .type key_count_cmp, @function

#! file-offset 0x63b20
#! rip-offset  0x23b20
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode                
.key_count_cmp:                #        0x23b20  0      OPC=<label>           
  movl %edi, %edi              #  1     0x23b20  2      OPC=movl_r32_r32      
  movl %esi, %esi              #  2     0x23b22  2      OPC=movl_r32_r32      
  movl %edi, %edi              #  3     0x23b24  2      OPC=movl_r32_r32      
  movl 0x8(%r15,%rdi,1), %edx  #  4     0x23b26  5      OPC=movl_r32_m32      
  movl %esi, %esi              #  5     0x23b2b  2      OPC=movl_r32_r32      
  movl 0x8(%r15,%rsi,1), %eax  #  6     0x23b2d  5      OPC=movl_r32_m32      
  cmpl %eax, %edx              #  7     0x23b32  2      OPC=cmpl_r32_r32      
  je .L_23b60                  #  8     0x23b34  2      OPC=je_label          
  subl %edx, %eax              #  9     0x23b36  2      OPC=subl_r32_r32      
  popq %r11                    #  10    0x23b38  2      OPC=popq_r64_1        
  nop                          #  11    0x23b3a  1      OPC=nop               
  nop                          #  12    0x23b3b  1      OPC=nop               
  nop                          #  13    0x23b3c  1      OPC=nop               
  nop                          #  14    0x23b3d  1      OPC=nop               
  nop                          #  15    0x23b3e  1      OPC=nop               
  nop                          #  16    0x23b3f  1      OPC=nop               
  andl $0xffffffe0, %r11d      #  17    0x23b40  7      OPC=andl_r32_imm32    
  nop                          #  18    0x23b47  1      OPC=nop               
  nop                          #  19    0x23b48  1      OPC=nop               
  nop                          #  20    0x23b49  1      OPC=nop               
  nop                          #  21    0x23b4a  1      OPC=nop               
  addq %r15, %r11              #  22    0x23b4b  3      OPC=addq_r64_r64      
  jmpq %r11                    #  23    0x23b4e  3      OPC=jmpq_r64          
  nop                          #  24    0x23b51  1      OPC=nop               
  nop                          #  25    0x23b52  1      OPC=nop               
  nop                          #  26    0x23b53  1      OPC=nop               
  nop                          #  27    0x23b54  1      OPC=nop               
  nop                          #  28    0x23b55  1      OPC=nop               
  nop                          #  29    0x23b56  1      OPC=nop               
  nop                          #  30    0x23b57  1      OPC=nop               
  nop                          #  31    0x23b58  1      OPC=nop               
  nop                          #  32    0x23b59  1      OPC=nop               
  nop                          #  33    0x23b5a  1      OPC=nop               
  nop                          #  34    0x23b5b  1      OPC=nop               
  nop                          #  35    0x23b5c  1      OPC=nop               
  nop                          #  36    0x23b5d  1      OPC=nop               
  nop                          #  37    0x23b5e  1      OPC=nop               
  nop                          #  38    0x23b5f  1      OPC=nop               
  nop                          #  39    0x23b60  1      OPC=nop               
  nop                          #  40    0x23b61  1      OPC=nop               
  nop                          #  41    0x23b62  1      OPC=nop               
  nop                          #  42    0x23b63  1      OPC=nop               
  nop                          #  43    0x23b64  1      OPC=nop               
  nop                          #  44    0x23b65  1      OPC=nop               
  nop                          #  45    0x23b66  1      OPC=nop               
.L_23b60:                      #        0x23b67  0      OPC=<label>           
  movl $0xffffffff, %eax       #  46    0x23b67  6      OPC=movl_r32_imm32_1  
  movl %esi, %esi              #  47    0x23b6d  2      OPC=movl_r32_r32      
  movq (%r15,%rsi,1), %rdx     #  48    0x23b6f  4      OPC=movq_r64_m64      
  movl %edi, %edi              #  49    0x23b73  2      OPC=movl_r32_r32      
  cmpq %rdx, (%r15,%rdi,1)     #  50    0x23b75  4      OPC=cmpq_m64_r64      
  jb .L_23b80                  #  51    0x23b79  2      OPC=jb_label          
  seta %al                     #  52    0x23b7b  3      OPC=seta_r8           
  movzbl %al, %eax             #  53    0x23b7e  3      OPC=movzbl_r32_r8     
  nop                          #  54    0x23b81  1      OPC=nop               
  nop                          #  55    0x23b82  1      OPC=nop               
  nop                          #  56    0x23b83  1      OPC=nop               
  nop                          #  57    0x23b84  1      OPC=nop               
  nop                          #  58    0x23b85  1      OPC=nop               
  nop                          #  59    0x23b86  1      OPC=nop               
  nop                          #  60    0x23b87  1      OPC=nop               
.L_23b80:                      #        0x23b88  0      OPC=<label>           
  popq %r11                    #  61    0x23b88  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d      #  62    0x23b8a  7      OPC=andl_r32_imm32    
  nop                          #  63    0x23b91  1      OPC=nop               
  nop                          #  64    0x23b92  1      OPC=nop               
  nop                          #  65    0x23b93  1      OPC=nop               
  nop                          #  66    0x23b94  1      OPC=nop               
  addq %r15, %r11              #  67    0x23b95  3      OPC=addq_r64_r64      
  jmpq %r11                    #  68    0x23b98  3      OPC=jmpq_r64          
  nop                          #  69    0x23b9b  1      OPC=nop               
  nop                          #  70    0x23b9c  1      OPC=nop               
  nop                          #  71    0x23b9d  1      OPC=nop               
  nop                          #  72    0x23b9e  1      OPC=nop               
  nop                          #  73    0x23b9f  1      OPC=nop               
  nop                          #  74    0x23ba0  1      OPC=nop               
  nop                          #  75    0x23ba1  1      OPC=nop               
  nop                          #  76    0x23ba2  1      OPC=nop               
  nop                          #  77    0x23ba3  1      OPC=nop               
  nop                          #  78    0x23ba4  1      OPC=nop               
  nop                          #  79    0x23ba5  1      OPC=nop               
  nop                          #  80    0x23ba6  1      OPC=nop               
  nop                          #  81    0x23ba7  1      OPC=nop               
  nop                          #  82    0x23ba8  1      OPC=nop               
  nop                          #  83    0x23ba9  1      OPC=nop               
  nop                          #  84    0x23baa  1      OPC=nop               
  nop                          #  85    0x23bab  1      OPC=nop               
  nop                          #  86    0x23bac  1      OPC=nop               
  nop                          #  87    0x23bad  1      OPC=nop               
  nop                          #  88    0x23bae  1      OPC=nop               
                                                                              
.size key_count_cmp, .-key_count_cmp

