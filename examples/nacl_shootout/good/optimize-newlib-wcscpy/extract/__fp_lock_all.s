  .text
  .globl __fp_lock_all
  .type __fp_lock_all, @function

#! file-offset 0x15a400
#! rip-offset  0x11a400
#! capacity    96 bytes

# Text                       #  Line  RIP       Bytes  Opcode              
.__fp_lock_all:              #        0x11a400  0      OPC=<label>         
  subl $0x8, %esp            #  1     0x11a400  3      OPC=subl_r32_imm8   
  addq %r15, %rsp            #  2     0x11a403  3      OPC=addq_r64_r64    
  nop                        #  3     0x11a406  1      OPC=nop             
  nop                        #  4     0x11a407  1      OPC=nop             
  nop                        #  5     0x11a408  1      OPC=nop             
  nop                        #  6     0x11a409  1      OPC=nop             
  nop                        #  7     0x11a40a  1      OPC=nop             
  nop                        #  8     0x11a40b  1      OPC=nop             
  nop                        #  9     0x11a40c  1      OPC=nop             
  nop                        #  10    0x11a40d  1      OPC=nop             
  nop                        #  11    0x11a40e  1      OPC=nop             
  nop                        #  12    0x11a40f  1      OPC=nop             
  nop                        #  13    0x11a410  1      OPC=nop             
  nop                        #  14    0x11a411  1      OPC=nop             
  nop                        #  15    0x11a412  1      OPC=nop             
  nop                        #  16    0x11a413  1      OPC=nop             
  nop                        #  17    0x11a414  1      OPC=nop             
  nop                        #  18    0x11a415  1      OPC=nop             
  nop                        #  19    0x11a416  1      OPC=nop             
  nop                        #  20    0x11a417  1      OPC=nop             
  nop                        #  21    0x11a418  1      OPC=nop             
  nop                        #  22    0x11a419  1      OPC=nop             
  nop                        #  23    0x11a41a  1      OPC=nop             
  callq .__sfp_lock_acquire  #  24    0x11a41b  5      OPC=callq_label     
  nop                        #  25    0x11a420  1      OPC=nop             
  nop                        #  26    0x11a421  1      OPC=nop             
  nop                        #  27    0x11a422  1      OPC=nop             
  nop                        #  28    0x11a423  1      OPC=nop             
  nop                        #  29    0x11a424  1      OPC=nop             
  nop                        #  30    0x11a425  1      OPC=nop             
  nop                        #  31    0x11a426  1      OPC=nop             
  nop                        #  32    0x11a427  1      OPC=nop             
  nop                        #  33    0x11a428  1      OPC=nop             
  nop                        #  34    0x11a429  1      OPC=nop             
  nop                        #  35    0x11a42a  1      OPC=nop             
  nop                        #  36    0x11a42b  1      OPC=nop             
  nop                        #  37    0x11a42c  1      OPC=nop             
  nop                        #  38    0x11a42d  1      OPC=nop             
  nop                        #  39    0x11a42e  1      OPC=nop             
  nop                        #  40    0x11a42f  1      OPC=nop             
  nop                        #  41    0x11a430  1      OPC=nop             
  nop                        #  42    0x11a431  1      OPC=nop             
  nop                        #  43    0x11a432  1      OPC=nop             
  nop                        #  44    0x11a433  1      OPC=nop             
  nop                        #  45    0x11a434  1      OPC=nop             
  nop                        #  46    0x11a435  1      OPC=nop             
  nop                        #  47    0x11a436  1      OPC=nop             
  nop                        #  48    0x11a437  1      OPC=nop             
  nop                        #  49    0x11a438  1      OPC=nop             
  nop                        #  50    0x11a439  1      OPC=nop             
  nop                        #  51    0x11a43a  1      OPC=nop             
  callq .__nacl_read_tp      #  52    0x11a43b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax    #  53    0x11a440  7      OPC=leaq_r64_m16    
  movl $0x11a380, %esi       #  54    0x11a447  5      OPC=movl_r32_imm32  
  movl %eax, %eax            #  55    0x11a44c  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi   #  56    0x11a44e  4      OPC=movl_r32_m32    
  addl $0x8, %esp            #  57    0x11a452  3      OPC=addl_r32_imm8   
  addq %r15, %rsp            #  58    0x11a455  3      OPC=addq_r64_r64    
  jmpq ._fwalk               #  59    0x11a458  5      OPC=jmpq_label_1    
  nop                        #  60    0x11a45d  1      OPC=nop             
  nop                        #  61    0x11a45e  1      OPC=nop             
  nop                        #  62    0x11a45f  1      OPC=nop             
                                                                           
.size __fp_lock_all, .-__fp_lock_all

