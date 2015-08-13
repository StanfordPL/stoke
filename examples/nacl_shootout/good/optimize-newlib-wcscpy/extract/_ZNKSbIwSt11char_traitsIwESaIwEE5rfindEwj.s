  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj, @function

#! file-offset 0x115580
#! rip-offset  0xd5580
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode                
._ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj:  #        0xd5580  0      OPC=<label>           
  movl %edi, %edi                            #  1     0xd5580  2      OPC=movl_r32_r32      
  movl %edi, %edi                            #  2     0xd5582  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ecx                   #  3     0xd5584  4      OPC=movl_r32_m32      
  leal -0xc(%rcx), %eax                      #  4     0xd5588  3      OPC=leal_r32_m16      
  movl %eax, %eax                            #  5     0xd558b  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax                   #  6     0xd558d  4      OPC=movl_r32_m32      
  testl %eax, %eax                           #  7     0xd5591  2      OPC=testl_r32_r32     
  je .L_d55e0                                #  8     0xd5593  2      OPC=je_label          
  subl $0x1, %eax                            #  9     0xd5595  3      OPC=subl_r32_imm8     
  cmpl %eax, %edx                            #  10    0xd5598  2      OPC=cmpl_r32_r32      
  cmoval %eax, %edx                          #  11    0xd559a  3      OPC=cmoval_r32_r32    
  leal 0x1(%rdx), %eax                       #  12    0xd559d  3      OPC=leal_r32_m16      
  leal (%rcx,%rdx,4), %edx                   #  13    0xd55a0  3      OPC=leal_r32_m16      
  nop                                        #  14    0xd55a3  1      OPC=nop               
  nop                                        #  15    0xd55a4  1      OPC=nop               
  nop                                        #  16    0xd55a5  1      OPC=nop               
  nop                                        #  17    0xd55a6  1      OPC=nop               
  nop                                        #  18    0xd55a7  1      OPC=nop               
  nop                                        #  19    0xd55a8  1      OPC=nop               
  nop                                        #  20    0xd55a9  1      OPC=nop               
  nop                                        #  21    0xd55aa  1      OPC=nop               
  nop                                        #  22    0xd55ab  1      OPC=nop               
  nop                                        #  23    0xd55ac  1      OPC=nop               
  nop                                        #  24    0xd55ad  1      OPC=nop               
  nop                                        #  25    0xd55ae  1      OPC=nop               
  nop                                        #  26    0xd55af  1      OPC=nop               
  nop                                        #  27    0xd55b0  1      OPC=nop               
  nop                                        #  28    0xd55b1  1      OPC=nop               
  nop                                        #  29    0xd55b2  1      OPC=nop               
  nop                                        #  30    0xd55b3  1      OPC=nop               
  nop                                        #  31    0xd55b4  1      OPC=nop               
  nop                                        #  32    0xd55b5  1      OPC=nop               
  nop                                        #  33    0xd55b6  1      OPC=nop               
  nop                                        #  34    0xd55b7  1      OPC=nop               
  nop                                        #  35    0xd55b8  1      OPC=nop               
  nop                                        #  36    0xd55b9  1      OPC=nop               
  nop                                        #  37    0xd55ba  1      OPC=nop               
  nop                                        #  38    0xd55bb  1      OPC=nop               
  nop                                        #  39    0xd55bc  1      OPC=nop               
  nop                                        #  40    0xd55bd  1      OPC=nop               
  nop                                        #  41    0xd55be  1      OPC=nop               
  nop                                        #  42    0xd55bf  1      OPC=nop               
.L_d55c0:                                    #        0xd55c0  0      OPC=<label>           
  testl %eax, %eax                           #  43    0xd55c0  2      OPC=testl_r32_r32     
  je .L_d55e0                                #  44    0xd55c2  2      OPC=je_label          
  movl %edx, %ecx                            #  45    0xd55c4  2      OPC=movl_r32_r32      
  subl $0x1, %eax                            #  46    0xd55c6  3      OPC=subl_r32_imm8     
  subl $0x4, %edx                            #  47    0xd55c9  3      OPC=subl_r32_imm8     
  movl %ecx, %ecx                            #  48    0xd55cc  2      OPC=movl_r32_r32      
  cmpl (%r15,%rcx,1), %esi                   #  49    0xd55ce  4      OPC=cmpl_r32_m32      
  jne .L_d55c0                               #  50    0xd55d2  2      OPC=jne_label         
  popq %r11                                  #  51    0xd55d4  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d                    #  52    0xd55d6  7      OPC=andl_r32_imm32    
  nop                                        #  53    0xd55dd  1      OPC=nop               
  nop                                        #  54    0xd55de  1      OPC=nop               
  nop                                        #  55    0xd55df  1      OPC=nop               
  nop                                        #  56    0xd55e0  1      OPC=nop               
  addq %r15, %r11                            #  57    0xd55e1  3      OPC=addq_r64_r64      
  jmpq %r11                                  #  58    0xd55e4  3      OPC=jmpq_r64          
.L_d55e0:                                    #        0xd55e7  0      OPC=<label>           
  movl $0xffffffff, %eax                     #  59    0xd55e7  6      OPC=movl_r32_imm32_1  
  popq %r11                                  #  60    0xd55ed  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d                    #  61    0xd55ef  7      OPC=andl_r32_imm32    
  nop                                        #  62    0xd55f6  1      OPC=nop               
  nop                                        #  63    0xd55f7  1      OPC=nop               
  nop                                        #  64    0xd55f8  1      OPC=nop               
  nop                                        #  65    0xd55f9  1      OPC=nop               
  addq %r15, %r11                            #  66    0xd55fa  3      OPC=addq_r64_r64      
  jmpq %r11                                  #  67    0xd55fd  3      OPC=jmpq_r64          
  nop                                        #  68    0xd5600  1      OPC=nop               
  nop                                        #  69    0xd5601  1      OPC=nop               
  nop                                        #  70    0xd5602  1      OPC=nop               
  nop                                        #  71    0xd5603  1      OPC=nop               
  nop                                        #  72    0xd5604  1      OPC=nop               
  nop                                        #  73    0xd5605  1      OPC=nop               
  nop                                        #  74    0xd5606  1      OPC=nop               
  nop                                        #  75    0xd5607  1      OPC=nop               
  nop                                        #  76    0xd5608  1      OPC=nop               
  nop                                        #  77    0xd5609  1      OPC=nop               
  nop                                        #  78    0xd560a  1      OPC=nop               
  nop                                        #  79    0xd560b  1      OPC=nop               
  nop                                        #  80    0xd560c  1      OPC=nop               
  nop                                        #  81    0xd560d  1      OPC=nop               
  nop                                        #  82    0xd560e  1      OPC=nop               
                                                                                            
.size _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj

