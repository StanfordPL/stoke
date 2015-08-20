  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj, @function

#! file-offset 0x115880
#! rip-offset  0xd5880
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode                
._ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj:  #        0xd5880  0      OPC=<label>           
  movl %edi, %edi                            #  1     0xd5880  2      OPC=movl_r32_r32      
  movl %edi, %edi                            #  2     0xd5882  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ecx                   #  3     0xd5884  4      OPC=movl_r32_m32      
  leal -0xc(%rcx), %eax                      #  4     0xd5888  3      OPC=leal_r32_m16      
  movl %eax, %eax                            #  5     0xd588b  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax                   #  6     0xd588d  4      OPC=movl_r32_m32      
  testl %eax, %eax                           #  7     0xd5891  2      OPC=testl_r32_r32     
  je .L_d58e0                                #  8     0xd5893  2      OPC=je_label          
  subl $0x1, %eax                            #  9     0xd5895  3      OPC=subl_r32_imm8     
  cmpl %eax, %edx                            #  10    0xd5898  2      OPC=cmpl_r32_r32      
  cmoval %eax, %edx                          #  11    0xd589a  3      OPC=cmoval_r32_r32    
  leal 0x1(%rdx), %eax                       #  12    0xd589d  3      OPC=leal_r32_m16      
  leal (%rcx,%rdx,4), %edx                   #  13    0xd58a0  3      OPC=leal_r32_m16      
  nop                                        #  14    0xd58a3  1      OPC=nop               
  nop                                        #  15    0xd58a4  1      OPC=nop               
  nop                                        #  16    0xd58a5  1      OPC=nop               
  nop                                        #  17    0xd58a6  1      OPC=nop               
  nop                                        #  18    0xd58a7  1      OPC=nop               
  nop                                        #  19    0xd58a8  1      OPC=nop               
  nop                                        #  20    0xd58a9  1      OPC=nop               
  nop                                        #  21    0xd58aa  1      OPC=nop               
  nop                                        #  22    0xd58ab  1      OPC=nop               
  nop                                        #  23    0xd58ac  1      OPC=nop               
  nop                                        #  24    0xd58ad  1      OPC=nop               
  nop                                        #  25    0xd58ae  1      OPC=nop               
  nop                                        #  26    0xd58af  1      OPC=nop               
  nop                                        #  27    0xd58b0  1      OPC=nop               
  nop                                        #  28    0xd58b1  1      OPC=nop               
  nop                                        #  29    0xd58b2  1      OPC=nop               
  nop                                        #  30    0xd58b3  1      OPC=nop               
  nop                                        #  31    0xd58b4  1      OPC=nop               
  nop                                        #  32    0xd58b5  1      OPC=nop               
  nop                                        #  33    0xd58b6  1      OPC=nop               
  nop                                        #  34    0xd58b7  1      OPC=nop               
  nop                                        #  35    0xd58b8  1      OPC=nop               
  nop                                        #  36    0xd58b9  1      OPC=nop               
  nop                                        #  37    0xd58ba  1      OPC=nop               
  nop                                        #  38    0xd58bb  1      OPC=nop               
  nop                                        #  39    0xd58bc  1      OPC=nop               
  nop                                        #  40    0xd58bd  1      OPC=nop               
  nop                                        #  41    0xd58be  1      OPC=nop               
  nop                                        #  42    0xd58bf  1      OPC=nop               
.L_d58c0:                                    #        0xd58c0  0      OPC=<label>           
  testl %eax, %eax                           #  43    0xd58c0  2      OPC=testl_r32_r32     
  je .L_d58e0                                #  44    0xd58c2  2      OPC=je_label          
  movl %edx, %ecx                            #  45    0xd58c4  2      OPC=movl_r32_r32      
  subl $0x1, %eax                            #  46    0xd58c6  3      OPC=subl_r32_imm8     
  subl $0x4, %edx                            #  47    0xd58c9  3      OPC=subl_r32_imm8     
  movl %ecx, %ecx                            #  48    0xd58cc  2      OPC=movl_r32_r32      
  cmpl (%r15,%rcx,1), %esi                   #  49    0xd58ce  4      OPC=cmpl_r32_m32      
  jne .L_d58c0                               #  50    0xd58d2  2      OPC=jne_label         
  popq %r11                                  #  51    0xd58d4  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d                    #  52    0xd58d6  7      OPC=andl_r32_imm32    
  nop                                        #  53    0xd58dd  1      OPC=nop               
  nop                                        #  54    0xd58de  1      OPC=nop               
  nop                                        #  55    0xd58df  1      OPC=nop               
  nop                                        #  56    0xd58e0  1      OPC=nop               
  addq %r15, %r11                            #  57    0xd58e1  3      OPC=addq_r64_r64      
  jmpq %r11                                  #  58    0xd58e4  3      OPC=jmpq_r64          
.L_d58e0:                                    #        0xd58e7  0      OPC=<label>           
  movl $0xffffffff, %eax                     #  59    0xd58e7  6      OPC=movl_r32_imm32_1  
  popq %r11                                  #  60    0xd58ed  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d                    #  61    0xd58ef  7      OPC=andl_r32_imm32    
  nop                                        #  62    0xd58f6  1      OPC=nop               
  nop                                        #  63    0xd58f7  1      OPC=nop               
  nop                                        #  64    0xd58f8  1      OPC=nop               
  nop                                        #  65    0xd58f9  1      OPC=nop               
  addq %r15, %r11                            #  66    0xd58fa  3      OPC=addq_r64_r64      
  jmpq %r11                                  #  67    0xd58fd  3      OPC=jmpq_r64          
  nop                                        #  68    0xd5900  1      OPC=nop               
  nop                                        #  69    0xd5901  1      OPC=nop               
  nop                                        #  70    0xd5902  1      OPC=nop               
  nop                                        #  71    0xd5903  1      OPC=nop               
  nop                                        #  72    0xd5904  1      OPC=nop               
  nop                                        #  73    0xd5905  1      OPC=nop               
  nop                                        #  74    0xd5906  1      OPC=nop               
  nop                                        #  75    0xd5907  1      OPC=nop               
  nop                                        #  76    0xd5908  1      OPC=nop               
  nop                                        #  77    0xd5909  1      OPC=nop               
  nop                                        #  78    0xd590a  1      OPC=nop               
  nop                                        #  79    0xd590b  1      OPC=nop               
  nop                                        #  80    0xd590c  1      OPC=nop               
  nop                                        #  81    0xd590d  1      OPC=nop               
  nop                                        #  82    0xd590e  1      OPC=nop               
                                                                                            
.size _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj

