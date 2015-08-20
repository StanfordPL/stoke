  .text
  .globl __fp_lock_all
  .type __fp_lock_all, @function

#! file-offset 0x15a700
#! rip-offset  0x11a700
#! capacity    96 bytes

# Text                       #  Line  RIP       Bytes  Opcode              
.__fp_lock_all:              #        0x11a700  0      OPC=<label>         
  subl $0x8, %esp            #  1     0x11a700  3      OPC=subl_r32_imm8   
  addq %r15, %rsp            #  2     0x11a703  3      OPC=addq_r64_r64    
  nop                        #  3     0x11a706  1      OPC=nop             
  nop                        #  4     0x11a707  1      OPC=nop             
  nop                        #  5     0x11a708  1      OPC=nop             
  nop                        #  6     0x11a709  1      OPC=nop             
  nop                        #  7     0x11a70a  1      OPC=nop             
  nop                        #  8     0x11a70b  1      OPC=nop             
  nop                        #  9     0x11a70c  1      OPC=nop             
  nop                        #  10    0x11a70d  1      OPC=nop             
  nop                        #  11    0x11a70e  1      OPC=nop             
  nop                        #  12    0x11a70f  1      OPC=nop             
  nop                        #  13    0x11a710  1      OPC=nop             
  nop                        #  14    0x11a711  1      OPC=nop             
  nop                        #  15    0x11a712  1      OPC=nop             
  nop                        #  16    0x11a713  1      OPC=nop             
  nop                        #  17    0x11a714  1      OPC=nop             
  nop                        #  18    0x11a715  1      OPC=nop             
  nop                        #  19    0x11a716  1      OPC=nop             
  nop                        #  20    0x11a717  1      OPC=nop             
  nop                        #  21    0x11a718  1      OPC=nop             
  nop                        #  22    0x11a719  1      OPC=nop             
  nop                        #  23    0x11a71a  1      OPC=nop             
  callq .__sfp_lock_acquire  #  24    0x11a71b  5      OPC=callq_label     
  nop                        #  25    0x11a720  1      OPC=nop             
  nop                        #  26    0x11a721  1      OPC=nop             
  nop                        #  27    0x11a722  1      OPC=nop             
  nop                        #  28    0x11a723  1      OPC=nop             
  nop                        #  29    0x11a724  1      OPC=nop             
  nop                        #  30    0x11a725  1      OPC=nop             
  nop                        #  31    0x11a726  1      OPC=nop             
  nop                        #  32    0x11a727  1      OPC=nop             
  nop                        #  33    0x11a728  1      OPC=nop             
  nop                        #  34    0x11a729  1      OPC=nop             
  nop                        #  35    0x11a72a  1      OPC=nop             
  nop                        #  36    0x11a72b  1      OPC=nop             
  nop                        #  37    0x11a72c  1      OPC=nop             
  nop                        #  38    0x11a72d  1      OPC=nop             
  nop                        #  39    0x11a72e  1      OPC=nop             
  nop                        #  40    0x11a72f  1      OPC=nop             
  nop                        #  41    0x11a730  1      OPC=nop             
  nop                        #  42    0x11a731  1      OPC=nop             
  nop                        #  43    0x11a732  1      OPC=nop             
  nop                        #  44    0x11a733  1      OPC=nop             
  nop                        #  45    0x11a734  1      OPC=nop             
  nop                        #  46    0x11a735  1      OPC=nop             
  nop                        #  47    0x11a736  1      OPC=nop             
  nop                        #  48    0x11a737  1      OPC=nop             
  nop                        #  49    0x11a738  1      OPC=nop             
  nop                        #  50    0x11a739  1      OPC=nop             
  nop                        #  51    0x11a73a  1      OPC=nop             
  callq .__nacl_read_tp      #  52    0x11a73b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax    #  53    0x11a740  7      OPC=leaq_r64_m16    
  movl $0x11a680, %esi       #  54    0x11a747  5      OPC=movl_r32_imm32  
  movl %eax, %eax            #  55    0x11a74c  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi   #  56    0x11a74e  4      OPC=movl_r32_m32    
  addl $0x8, %esp            #  57    0x11a752  3      OPC=addl_r32_imm8   
  addq %r15, %rsp            #  58    0x11a755  3      OPC=addq_r64_r64    
  jmpq ._fwalk               #  59    0x11a758  5      OPC=jmpq_label_1    
  nop                        #  60    0x11a75d  1      OPC=nop             
  nop                        #  61    0x11a75e  1      OPC=nop             
  nop                        #  62    0x11a75f  1      OPC=nop             
                                                                           
.size __fp_lock_all, .-__fp_lock_all

