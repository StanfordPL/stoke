  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw
  .type _ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw, @function

#! file-offset 0x115540
#! rip-offset  0xd5540
#! capacity    96 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw:  #        0xd5540  0      OPC=<label>         
  movl %edi, %edi                                    #  1     0xd5540  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  2     0xd5542  2      OPC=movl_r32_r32    
  movl $0x1, %eax                                    #  3     0xd5544  5      OPC=movl_r32_imm32  
  movl %edi, %edi                                    #  4     0xd5549  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx                           #  5     0xd554b  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                    #  6     0xd554f  2      OPC=cmpl_r32_r32    
  ja .L_d5580                                        #  7     0xd5551  2      OPC=ja_label        
  leal -0xc(%rdx), %eax                              #  8     0xd5553  3      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  9     0xd5556  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                           #  10    0xd5558  4      OPC=movl_r32_m32    
  leal (%rdx,%rax,4), %edx                           #  11    0xd555c  3      OPC=leal_r32_m16    
  nop                                                #  12    0xd555f  1      OPC=nop             
  cmpl %esi, %edx                                    #  13    0xd5560  2      OPC=cmpl_r32_r32    
  setb %al                                           #  14    0xd5562  3      OPC=setb_r8         
  nop                                                #  15    0xd5565  1      OPC=nop             
  nop                                                #  16    0xd5566  1      OPC=nop             
  nop                                                #  17    0xd5567  1      OPC=nop             
  nop                                                #  18    0xd5568  1      OPC=nop             
  nop                                                #  19    0xd5569  1      OPC=nop             
  nop                                                #  20    0xd556a  1      OPC=nop             
  nop                                                #  21    0xd556b  1      OPC=nop             
  nop                                                #  22    0xd556c  1      OPC=nop             
  nop                                                #  23    0xd556d  1      OPC=nop             
  nop                                                #  24    0xd556e  1      OPC=nop             
  nop                                                #  25    0xd556f  1      OPC=nop             
  nop                                                #  26    0xd5570  1      OPC=nop             
  nop                                                #  27    0xd5571  1      OPC=nop             
  nop                                                #  28    0xd5572  1      OPC=nop             
  nop                                                #  29    0xd5573  1      OPC=nop             
  nop                                                #  30    0xd5574  1      OPC=nop             
  nop                                                #  31    0xd5575  1      OPC=nop             
  nop                                                #  32    0xd5576  1      OPC=nop             
  nop                                                #  33    0xd5577  1      OPC=nop             
  nop                                                #  34    0xd5578  1      OPC=nop             
  nop                                                #  35    0xd5579  1      OPC=nop             
  nop                                                #  36    0xd557a  1      OPC=nop             
  nop                                                #  37    0xd557b  1      OPC=nop             
  nop                                                #  38    0xd557c  1      OPC=nop             
  nop                                                #  39    0xd557d  1      OPC=nop             
  nop                                                #  40    0xd557e  1      OPC=nop             
  nop                                                #  41    0xd557f  1      OPC=nop             
.L_d5580:                                            #        0xd5580  0      OPC=<label>         
  popq %r11                                          #  42    0xd5580  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  43    0xd5582  7      OPC=andl_r32_imm32  
  nop                                                #  44    0xd5589  1      OPC=nop             
  nop                                                #  45    0xd558a  1      OPC=nop             
  nop                                                #  46    0xd558b  1      OPC=nop             
  nop                                                #  47    0xd558c  1      OPC=nop             
  addq %r15, %r11                                    #  48    0xd558d  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  49    0xd5590  3      OPC=jmpq_r64        
  nop                                                #  50    0xd5593  1      OPC=nop             
  nop                                                #  51    0xd5594  1      OPC=nop             
  nop                                                #  52    0xd5595  1      OPC=nop             
  nop                                                #  53    0xd5596  1      OPC=nop             
  nop                                                #  54    0xd5597  1      OPC=nop             
  nop                                                #  55    0xd5598  1      OPC=nop             
  nop                                                #  56    0xd5599  1      OPC=nop             
  nop                                                #  57    0xd559a  1      OPC=nop             
  nop                                                #  58    0xd559b  1      OPC=nop             
  nop                                                #  59    0xd559c  1      OPC=nop             
  nop                                                #  60    0xd559d  1      OPC=nop             
  nop                                                #  61    0xd559e  1      OPC=nop             
  nop                                                #  62    0xd559f  1      OPC=nop             
  nop                                                #  63    0xd55a0  1      OPC=nop             
  nop                                                #  64    0xd55a1  1      OPC=nop             
  nop                                                #  65    0xd55a2  1      OPC=nop             
  nop                                                #  66    0xd55a3  1      OPC=nop             
  nop                                                #  67    0xd55a4  1      OPC=nop             
  nop                                                #  68    0xd55a5  1      OPC=nop             
  nop                                                #  69    0xd55a6  1      OPC=nop             
                                                                                                  
.size _ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw, .-_ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw

