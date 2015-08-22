  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj, @function

#! file-offset 0x115fa0
#! rip-offset  0xd5fa0
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode                
._ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj:  #        0xd5fa0  0      OPC=<label>           
  movl %edi, %edi                            #  1     0xd5fa0  2      OPC=movl_r32_r32      
  movl %edi, %edi                            #  2     0xd5fa2  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ecx                   #  3     0xd5fa4  4      OPC=movl_r32_m32      
  leal -0xc(%rcx), %eax                      #  4     0xd5fa8  3      OPC=leal_r32_m16      
  movl %eax, %eax                            #  5     0xd5fab  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax                   #  6     0xd5fad  4      OPC=movl_r32_m32      
  testl %eax, %eax                           #  7     0xd5fb1  2      OPC=testl_r32_r32     
  je .L_d6000                                #  8     0xd5fb3  2      OPC=je_label          
  subl $0x1, %eax                            #  9     0xd5fb5  3      OPC=subl_r32_imm8     
  cmpl %eax, %edx                            #  10    0xd5fb8  2      OPC=cmpl_r32_r32      
  cmoval %eax, %edx                          #  11    0xd5fba  3      OPC=cmoval_r32_r32    
  leal 0x1(%rdx), %eax                       #  12    0xd5fbd  3      OPC=leal_r32_m16      
  leal (%rcx,%rdx,4), %edx                   #  13    0xd5fc0  3      OPC=leal_r32_m16      
  nop                                        #  14    0xd5fc3  1      OPC=nop               
  nop                                        #  15    0xd5fc4  1      OPC=nop               
  nop                                        #  16    0xd5fc5  1      OPC=nop               
  nop                                        #  17    0xd5fc6  1      OPC=nop               
  nop                                        #  18    0xd5fc7  1      OPC=nop               
  nop                                        #  19    0xd5fc8  1      OPC=nop               
  nop                                        #  20    0xd5fc9  1      OPC=nop               
  nop                                        #  21    0xd5fca  1      OPC=nop               
  nop                                        #  22    0xd5fcb  1      OPC=nop               
  nop                                        #  23    0xd5fcc  1      OPC=nop               
  nop                                        #  24    0xd5fcd  1      OPC=nop               
  nop                                        #  25    0xd5fce  1      OPC=nop               
  nop                                        #  26    0xd5fcf  1      OPC=nop               
  nop                                        #  27    0xd5fd0  1      OPC=nop               
  nop                                        #  28    0xd5fd1  1      OPC=nop               
  nop                                        #  29    0xd5fd2  1      OPC=nop               
  nop                                        #  30    0xd5fd3  1      OPC=nop               
  nop                                        #  31    0xd5fd4  1      OPC=nop               
  nop                                        #  32    0xd5fd5  1      OPC=nop               
  nop                                        #  33    0xd5fd6  1      OPC=nop               
  nop                                        #  34    0xd5fd7  1      OPC=nop               
  nop                                        #  35    0xd5fd8  1      OPC=nop               
  nop                                        #  36    0xd5fd9  1      OPC=nop               
  nop                                        #  37    0xd5fda  1      OPC=nop               
  nop                                        #  38    0xd5fdb  1      OPC=nop               
  nop                                        #  39    0xd5fdc  1      OPC=nop               
  nop                                        #  40    0xd5fdd  1      OPC=nop               
  nop                                        #  41    0xd5fde  1      OPC=nop               
  nop                                        #  42    0xd5fdf  1      OPC=nop               
.L_d5fe0:                                    #        0xd5fe0  0      OPC=<label>           
  testl %eax, %eax                           #  43    0xd5fe0  2      OPC=testl_r32_r32     
  je .L_d6000                                #  44    0xd5fe2  2      OPC=je_label          
  movl %edx, %ecx                            #  45    0xd5fe4  2      OPC=movl_r32_r32      
  subl $0x1, %eax                            #  46    0xd5fe6  3      OPC=subl_r32_imm8     
  subl $0x4, %edx                            #  47    0xd5fe9  3      OPC=subl_r32_imm8     
  movl %ecx, %ecx                            #  48    0xd5fec  2      OPC=movl_r32_r32      
  cmpl (%r15,%rcx,1), %esi                   #  49    0xd5fee  4      OPC=cmpl_r32_m32      
  jne .L_d5fe0                               #  50    0xd5ff2  2      OPC=jne_label         
  popq %r11                                  #  51    0xd5ff4  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d                    #  52    0xd5ff6  7      OPC=andl_r32_imm32    
  nop                                        #  53    0xd5ffd  1      OPC=nop               
  nop                                        #  54    0xd5ffe  1      OPC=nop               
  nop                                        #  55    0xd5fff  1      OPC=nop               
  nop                                        #  56    0xd6000  1      OPC=nop               
  addq %r15, %r11                            #  57    0xd6001  3      OPC=addq_r64_r64      
  jmpq %r11                                  #  58    0xd6004  3      OPC=jmpq_r64          
.L_d6000:                                    #        0xd6007  0      OPC=<label>           
  movl $0xffffffff, %eax                     #  59    0xd6007  6      OPC=movl_r32_imm32_1  
  popq %r11                                  #  60    0xd600d  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d                    #  61    0xd600f  7      OPC=andl_r32_imm32    
  nop                                        #  62    0xd6016  1      OPC=nop               
  nop                                        #  63    0xd6017  1      OPC=nop               
  nop                                        #  64    0xd6018  1      OPC=nop               
  nop                                        #  65    0xd6019  1      OPC=nop               
  addq %r15, %r11                            #  66    0xd601a  3      OPC=addq_r64_r64      
  jmpq %r11                                  #  67    0xd601d  3      OPC=jmpq_r64          
  nop                                        #  68    0xd6020  1      OPC=nop               
  nop                                        #  69    0xd6021  1      OPC=nop               
  nop                                        #  70    0xd6022  1      OPC=nop               
  nop                                        #  71    0xd6023  1      OPC=nop               
  nop                                        #  72    0xd6024  1      OPC=nop               
  nop                                        #  73    0xd6025  1      OPC=nop               
  nop                                        #  74    0xd6026  1      OPC=nop               
  nop                                        #  75    0xd6027  1      OPC=nop               
  nop                                        #  76    0xd6028  1      OPC=nop               
  nop                                        #  77    0xd6029  1      OPC=nop               
  nop                                        #  78    0xd602a  1      OPC=nop               
  nop                                        #  79    0xd602b  1      OPC=nop               
  nop                                        #  80    0xd602c  1      OPC=nop               
  nop                                        #  81    0xd602d  1      OPC=nop               
  nop                                        #  82    0xd602e  1      OPC=nop               
                                                                                            
.size _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj

