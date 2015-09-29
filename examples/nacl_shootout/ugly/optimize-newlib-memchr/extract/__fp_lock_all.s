  .text
  .globl __fp_lock_all
  .type __fp_lock_all, @function

#! file-offset 0x15ae20
#! rip-offset  0x11ae20
#! capacity    96 bytes

# Text                       #  Line  RIP       Bytes  Opcode              
.__fp_lock_all:              #        0x11ae20  0      OPC=<label>         
  subl $0x8, %esp            #  1     0x11ae20  3      OPC=subl_r32_imm8   
  addq %r15, %rsp            #  2     0x11ae23  3      OPC=addq_r64_r64    
  nop                        #  3     0x11ae26  1      OPC=nop             
  nop                        #  4     0x11ae27  1      OPC=nop             
  nop                        #  5     0x11ae28  1      OPC=nop             
  nop                        #  6     0x11ae29  1      OPC=nop             
  nop                        #  7     0x11ae2a  1      OPC=nop             
  nop                        #  8     0x11ae2b  1      OPC=nop             
  nop                        #  9     0x11ae2c  1      OPC=nop             
  nop                        #  10    0x11ae2d  1      OPC=nop             
  nop                        #  11    0x11ae2e  1      OPC=nop             
  nop                        #  12    0x11ae2f  1      OPC=nop             
  nop                        #  13    0x11ae30  1      OPC=nop             
  nop                        #  14    0x11ae31  1      OPC=nop             
  nop                        #  15    0x11ae32  1      OPC=nop             
  nop                        #  16    0x11ae33  1      OPC=nop             
  nop                        #  17    0x11ae34  1      OPC=nop             
  nop                        #  18    0x11ae35  1      OPC=nop             
  nop                        #  19    0x11ae36  1      OPC=nop             
  nop                        #  20    0x11ae37  1      OPC=nop             
  nop                        #  21    0x11ae38  1      OPC=nop             
  nop                        #  22    0x11ae39  1      OPC=nop             
  nop                        #  23    0x11ae3a  1      OPC=nop             
  callq .__sfp_lock_acquire  #  24    0x11ae3b  5      OPC=callq_label     
  nop                        #  25    0x11ae40  1      OPC=nop             
  nop                        #  26    0x11ae41  1      OPC=nop             
  nop                        #  27    0x11ae42  1      OPC=nop             
  nop                        #  28    0x11ae43  1      OPC=nop             
  nop                        #  29    0x11ae44  1      OPC=nop             
  nop                        #  30    0x11ae45  1      OPC=nop             
  nop                        #  31    0x11ae46  1      OPC=nop             
  nop                        #  32    0x11ae47  1      OPC=nop             
  nop                        #  33    0x11ae48  1      OPC=nop             
  nop                        #  34    0x11ae49  1      OPC=nop             
  nop                        #  35    0x11ae4a  1      OPC=nop             
  nop                        #  36    0x11ae4b  1      OPC=nop             
  nop                        #  37    0x11ae4c  1      OPC=nop             
  nop                        #  38    0x11ae4d  1      OPC=nop             
  nop                        #  39    0x11ae4e  1      OPC=nop             
  nop                        #  40    0x11ae4f  1      OPC=nop             
  nop                        #  41    0x11ae50  1      OPC=nop             
  nop                        #  42    0x11ae51  1      OPC=nop             
  nop                        #  43    0x11ae52  1      OPC=nop             
  nop                        #  44    0x11ae53  1      OPC=nop             
  nop                        #  45    0x11ae54  1      OPC=nop             
  nop                        #  46    0x11ae55  1      OPC=nop             
  nop                        #  47    0x11ae56  1      OPC=nop             
  nop                        #  48    0x11ae57  1      OPC=nop             
  nop                        #  49    0x11ae58  1      OPC=nop             
  nop                        #  50    0x11ae59  1      OPC=nop             
  nop                        #  51    0x11ae5a  1      OPC=nop             
  callq .__nacl_read_tp      #  52    0x11ae5b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax    #  53    0x11ae60  7      OPC=leaq_r64_m16    
  movl $0x11ada0, %esi       #  54    0x11ae67  5      OPC=movl_r32_imm32  
  movl %eax, %eax            #  55    0x11ae6c  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi   #  56    0x11ae6e  4      OPC=movl_r32_m32    
  addl $0x8, %esp            #  57    0x11ae72  3      OPC=addl_r32_imm8   
  addq %r15, %rsp            #  58    0x11ae75  3      OPC=addq_r64_r64    
  jmpq ._fwalk               #  59    0x11ae78  5      OPC=jmpq_label_1    
  nop                        #  60    0x11ae7d  1      OPC=nop             
  nop                        #  61    0x11ae7e  1      OPC=nop             
  nop                        #  62    0x11ae7f  1      OPC=nop             
                                                                           
.size __fp_lock_all, .-__fp_lock_all

