  .text
  .globl __ctloc
  .type __ctloc, @function

#! file-offset 0x1814c0
#! rip-offset  0x1414c0
#! capacity    128 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__ctloc:                        #        0x1414c0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)         #  1     0x1414c0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                #  2     0x1414c5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)          #  3     0x1414c7  5      OPC=movq_m64_r64    
  movl %ebx, %edi                #  4     0x1414cc  2      OPC=movl_r32_r32    
  subl $0x18, %esp               #  5     0x1414ce  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x1414d1  3      OPC=addq_r64_r64    
  movl %edx, %r12d               #  7     0x1414d4  3      OPC=movl_r32_r32    
  nop                            #  8     0x1414d7  1      OPC=nop             
  nop                            #  9     0x1414d8  1      OPC=nop             
  nop                            #  10    0x1414d9  1      OPC=nop             
  nop                            #  11    0x1414da  1      OPC=nop             
  nop                            #  12    0x1414db  1      OPC=nop             
  nop                            #  13    0x1414dc  1      OPC=nop             
  nop                            #  14    0x1414dd  1      OPC=nop             
  nop                            #  15    0x1414de  1      OPC=nop             
  nop                            #  16    0x1414df  1      OPC=nop             
  movl %ebx, %ebx                #  17    0x1414e0  2      OPC=movl_r32_r32    
  movl $0x0, 0x3fc(%r15,%rbx,1)  #  18    0x1414e2  12     OPC=movl_m32_imm32  
  movl $0xff, %edx               #  19    0x1414ee  5      OPC=movl_r32_imm32  
  movl %esi, %esi                #  20    0x1414f3  2      OPC=movl_r32_r32    
  nop                            #  21    0x1414f5  1      OPC=nop             
  nop                            #  22    0x1414f6  1      OPC=nop             
  nop                            #  23    0x1414f7  1      OPC=nop             
  nop                            #  24    0x1414f8  1      OPC=nop             
  nop                            #  25    0x1414f9  1      OPC=nop             
  nop                            #  26    0x1414fa  1      OPC=nop             
  callq .mbstowcs                #  27    0x1414fb  5      OPC=callq_label     
  movl $0x0, %edx                #  28    0x141500  5      OPC=movl_r32_imm32  
  cmpl $0xffffffff, %eax         #  29    0x141505  6      OPC=cmpl_r32_imm32  
  nop                            #  30    0x14150b  1      OPC=nop             
  nop                            #  31    0x14150c  1      OPC=nop             
  nop                            #  32    0x14150d  1      OPC=nop             
  cmovel %edx, %eax              #  33    0x14150e  3      OPC=cmovel_r32_r32  
  movl %r12d, %r12d              #  34    0x141511  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)       #  35    0x141514  4      OPC=movl_m32_r32    
  movl %ebx, %eax                #  36    0x141518  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12          #  37    0x14151a  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx           #  38    0x14151f  5      OPC=movq_r64_m64    
  xchgw %ax, %ax                 #  39    0x141524  2      OPC=xchgw_ax_r16    
  addl $0x18, %esp               #  40    0x141526  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  41    0x141529  3      OPC=addq_r64_r64    
  popq %r11                      #  42    0x14152c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  43    0x14152e  7      OPC=andl_r32_imm32  
  nop                            #  44    0x141535  1      OPC=nop             
  nop                            #  45    0x141536  1      OPC=nop             
  nop                            #  46    0x141537  1      OPC=nop             
  nop                            #  47    0x141538  1      OPC=nop             
  addq %r15, %r11                #  48    0x141539  3      OPC=addq_r64_r64    
  jmpq %r11                      #  49    0x14153c  3      OPC=jmpq_r64        
  nop                            #  50    0x14153f  1      OPC=nop             
  nop                            #  51    0x141540  1      OPC=nop             
  nop                            #  52    0x141541  1      OPC=nop             
  nop                            #  53    0x141542  1      OPC=nop             
  nop                            #  54    0x141543  1      OPC=nop             
  nop                            #  55    0x141544  1      OPC=nop             
  nop                            #  56    0x141545  1      OPC=nop             
  nop                            #  57    0x141546  1      OPC=nop             
  nop                            #  58    0x141547  1      OPC=nop             
  nop                            #  59    0x141548  1      OPC=nop             
  nop                            #  60    0x141549  1      OPC=nop             
  nop                            #  61    0x14154a  1      OPC=nop             
  nop                            #  62    0x14154b  1      OPC=nop             
  nop                            #  63    0x14154c  1      OPC=nop             
                                                                               
.size __ctloc, .-__ctloc

