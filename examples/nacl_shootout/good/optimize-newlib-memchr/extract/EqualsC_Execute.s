  .text
  .globl EqualsC_Execute
  .type EqualsC_Execute, @function

#! file-offset 0x66cc0
#! rip-offset  0x26cc0
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.EqualsC_Execute:                #        0x26cc0  0      OPC=<label>         
  movl %edi, %edi                #  1     0x26cc0  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  2     0x26cc2  2      OPC=movl_r32_r32    
  movzbl 0xc(%r15,%rdi,1), %eax  #  3     0x26cc4  6      OPC=movzbl_r32_m8   
  testb %al, %al                 #  4     0x26cca  2      OPC=testb_r8_r8     
  jne .L_26d00                   #  5     0x26ccc  2      OPC=jne_label       
  movl %edi, %edi                #  6     0x26cce  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rdi,1), %eax   #  7     0x26cd0  5      OPC=movl_r32_m32    
  movl %edi, %edi                #  8     0x26cd5  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rdi,1), %edx   #  9     0x26cd7  5      OPC=movl_r32_m32    
  nop                            #  10    0x26cdc  1      OPC=nop             
  nop                            #  11    0x26cdd  1      OPC=nop             
  nop                            #  12    0x26cde  1      OPC=nop             
  nop                            #  13    0x26cdf  1      OPC=nop             
  movl %edx, %edx                #  14    0x26ce0  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx       #  15    0x26ce2  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  16    0x26ce6  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)       #  17    0x26ce8  4      OPC=movl_m32_r32    
  popq %r11                      #  18    0x26cec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  19    0x26cee  7      OPC=andl_r32_imm32  
  nop                            #  20    0x26cf5  1      OPC=nop             
  nop                            #  21    0x26cf6  1      OPC=nop             
  nop                            #  22    0x26cf7  1      OPC=nop             
  nop                            #  23    0x26cf8  1      OPC=nop             
  addq %r15, %r11                #  24    0x26cf9  3      OPC=addq_r64_r64    
  jmpq %r11                      #  25    0x26cfc  3      OPC=jmpq_r64        
  nop                            #  26    0x26cff  1      OPC=nop             
  nop                            #  27    0x26d00  1      OPC=nop             
  nop                            #  28    0x26d01  1      OPC=nop             
  nop                            #  29    0x26d02  1      OPC=nop             
  nop                            #  30    0x26d03  1      OPC=nop             
  nop                            #  31    0x26d04  1      OPC=nop             
  nop                            #  32    0x26d05  1      OPC=nop             
  nop                            #  33    0x26d06  1      OPC=nop             
.L_26d00:                        #        0x26d07  0      OPC=<label>         
  cmpb $0x1, %al                 #  34    0x26d07  2      OPC=cmpb_al_imm8    
  je .L_26d20                    #  35    0x26d09  2      OPC=je_label        
  popq %r11                      #  36    0x26d0b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  37    0x26d0d  7      OPC=andl_r32_imm32  
  nop                            #  38    0x26d14  1      OPC=nop             
  nop                            #  39    0x26d15  1      OPC=nop             
  nop                            #  40    0x26d16  1      OPC=nop             
  nop                            #  41    0x26d17  1      OPC=nop             
  addq %r15, %r11                #  42    0x26d18  3      OPC=addq_r64_r64    
  jmpq %r11                      #  43    0x26d1b  3      OPC=jmpq_r64        
  nop                            #  44    0x26d1e  1      OPC=nop             
  nop                            #  45    0x26d1f  1      OPC=nop             
  nop                            #  46    0x26d20  1      OPC=nop             
  nop                            #  47    0x26d21  1      OPC=nop             
  nop                            #  48    0x26d22  1      OPC=nop             
  nop                            #  49    0x26d23  1      OPC=nop             
  nop                            #  50    0x26d24  1      OPC=nop             
  nop                            #  51    0x26d25  1      OPC=nop             
  nop                            #  52    0x26d26  1      OPC=nop             
  nop                            #  53    0x26d27  1      OPC=nop             
  nop                            #  54    0x26d28  1      OPC=nop             
  nop                            #  55    0x26d29  1      OPC=nop             
  nop                            #  56    0x26d2a  1      OPC=nop             
  nop                            #  57    0x26d2b  1      OPC=nop             
  nop                            #  58    0x26d2c  1      OPC=nop             
  nop                            #  59    0x26d2d  1      OPC=nop             
.L_26d20:                        #        0x26d2e  0      OPC=<label>         
  movl %edi, %edi                #  60    0x26d2e  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rdi,1), %eax   #  61    0x26d30  5      OPC=movl_r32_m32    
  movl %edi, %edi                #  62    0x26d35  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rdi,1), %edx   #  63    0x26d37  5      OPC=movl_r32_m32    
  movl %edx, %edx                #  64    0x26d3c  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx       #  65    0x26d3e  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  66    0x26d42  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)       #  67    0x26d44  4      OPC=movl_m32_r32    
  popq %r11                      #  68    0x26d48  2      OPC=popq_r64_1      
  nop                            #  69    0x26d4a  1      OPC=nop             
  nop                            #  70    0x26d4b  1      OPC=nop             
  nop                            #  71    0x26d4c  1      OPC=nop             
  nop                            #  72    0x26d4d  1      OPC=nop             
  andl $0xffffffe0, %r11d        #  73    0x26d4e  7      OPC=andl_r32_imm32  
  nop                            #  74    0x26d55  1      OPC=nop             
  nop                            #  75    0x26d56  1      OPC=nop             
  nop                            #  76    0x26d57  1      OPC=nop             
  nop                            #  77    0x26d58  1      OPC=nop             
  addq %r15, %r11                #  78    0x26d59  3      OPC=addq_r64_r64    
  jmpq %r11                      #  79    0x26d5c  3      OPC=jmpq_r64        
  nop                            #  80    0x26d5f  1      OPC=nop             
  nop                            #  81    0x26d60  1      OPC=nop             
  nop                            #  82    0x26d61  1      OPC=nop             
  nop                            #  83    0x26d62  1      OPC=nop             
  nop                            #  84    0x26d63  1      OPC=nop             
  nop                            #  85    0x26d64  1      OPC=nop             
  nop                            #  86    0x26d65  1      OPC=nop             
  nop                            #  87    0x26d66  1      OPC=nop             
  nop                            #  88    0x26d67  1      OPC=nop             
  nop                            #  89    0x26d68  1      OPC=nop             
  nop                            #  90    0x26d69  1      OPC=nop             
  nop                            #  91    0x26d6a  1      OPC=nop             
  nop                            #  92    0x26d6b  1      OPC=nop             
  nop                            #  93    0x26d6c  1      OPC=nop             
  nop                            #  94    0x26d6d  1      OPC=nop             
  nop                            #  95    0x26d6e  1      OPC=nop             
  nop                            #  96    0x26d6f  1      OPC=nop             
  nop                            #  97    0x26d70  1      OPC=nop             
  nop                            #  98    0x26d71  1      OPC=nop             
  nop                            #  99    0x26d72  1      OPC=nop             
  nop                            #  100   0x26d73  1      OPC=nop             
  nop                            #  101   0x26d74  1      OPC=nop             
                                                                              
.size EqualsC_Execute, .-EqualsC_Execute

