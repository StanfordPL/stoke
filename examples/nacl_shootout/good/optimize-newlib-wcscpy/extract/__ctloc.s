  .text
  .globl __ctloc
  .type __ctloc, @function

#! file-offset 0x181120
#! rip-offset  0x141120
#! capacity    128 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__ctloc:                        #        0x141120  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)         #  1     0x141120  5      OPC=movq_m64_r64    
  movl %edi, %ebx                #  2     0x141125  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)          #  3     0x141127  5      OPC=movq_m64_r64    
  movl %ebx, %edi                #  4     0x14112c  2      OPC=movl_r32_r32    
  subl $0x18, %esp               #  5     0x14112e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x141131  3      OPC=addq_r64_r64    
  movl %edx, %r12d               #  7     0x141134  3      OPC=movl_r32_r32    
  nop                            #  8     0x141137  1      OPC=nop             
  nop                            #  9     0x141138  1      OPC=nop             
  nop                            #  10    0x141139  1      OPC=nop             
  nop                            #  11    0x14113a  1      OPC=nop             
  nop                            #  12    0x14113b  1      OPC=nop             
  nop                            #  13    0x14113c  1      OPC=nop             
  nop                            #  14    0x14113d  1      OPC=nop             
  nop                            #  15    0x14113e  1      OPC=nop             
  nop                            #  16    0x14113f  1      OPC=nop             
  movl %ebx, %ebx                #  17    0x141140  2      OPC=movl_r32_r32    
  movl $0x0, 0x3fc(%r15,%rbx,1)  #  18    0x141142  12     OPC=movl_m32_imm32  
  movl $0xff, %edx               #  19    0x14114e  5      OPC=movl_r32_imm32  
  movl %esi, %esi                #  20    0x141153  2      OPC=movl_r32_r32    
  nop                            #  21    0x141155  1      OPC=nop             
  nop                            #  22    0x141156  1      OPC=nop             
  nop                            #  23    0x141157  1      OPC=nop             
  nop                            #  24    0x141158  1      OPC=nop             
  nop                            #  25    0x141159  1      OPC=nop             
  nop                            #  26    0x14115a  1      OPC=nop             
  callq .mbstowcs                #  27    0x14115b  5      OPC=callq_label     
  movl $0x0, %edx                #  28    0x141160  5      OPC=movl_r32_imm32  
  cmpl $0xffffffff, %eax         #  29    0x141165  6      OPC=cmpl_r32_imm32  
  nop                            #  30    0x14116b  1      OPC=nop             
  nop                            #  31    0x14116c  1      OPC=nop             
  nop                            #  32    0x14116d  1      OPC=nop             
  cmovel %edx, %eax              #  33    0x14116e  3      OPC=cmovel_r32_r32  
  movl %r12d, %r12d              #  34    0x141171  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)       #  35    0x141174  4      OPC=movl_m32_r32    
  movl %ebx, %eax                #  36    0x141178  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12          #  37    0x14117a  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx           #  38    0x14117f  5      OPC=movq_r64_m64    
  xchgw %ax, %ax                 #  39    0x141184  2      OPC=xchgw_ax_r16    
  addl $0x18, %esp               #  40    0x141186  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  41    0x141189  3      OPC=addq_r64_r64    
  popq %r11                      #  42    0x14118c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  43    0x14118e  7      OPC=andl_r32_imm32  
  nop                            #  44    0x141195  1      OPC=nop             
  nop                            #  45    0x141196  1      OPC=nop             
  nop                            #  46    0x141197  1      OPC=nop             
  nop                            #  47    0x141198  1      OPC=nop             
  addq %r15, %r11                #  48    0x141199  3      OPC=addq_r64_r64    
  jmpq %r11                      #  49    0x14119c  3      OPC=jmpq_r64        
  nop                            #  50    0x14119f  1      OPC=nop             
  nop                            #  51    0x1411a0  1      OPC=nop             
  nop                            #  52    0x1411a1  1      OPC=nop             
  nop                            #  53    0x1411a2  1      OPC=nop             
  nop                            #  54    0x1411a3  1      OPC=nop             
  nop                            #  55    0x1411a4  1      OPC=nop             
  nop                            #  56    0x1411a5  1      OPC=nop             
  nop                            #  57    0x1411a6  1      OPC=nop             
  nop                            #  58    0x1411a7  1      OPC=nop             
  nop                            #  59    0x1411a8  1      OPC=nop             
  nop                            #  60    0x1411a9  1      OPC=nop             
  nop                            #  61    0x1411aa  1      OPC=nop             
  nop                            #  62    0x1411ab  1      OPC=nop             
  nop                            #  63    0x1411ac  1      OPC=nop             
                                                                               
.size __ctloc, .-__ctloc

