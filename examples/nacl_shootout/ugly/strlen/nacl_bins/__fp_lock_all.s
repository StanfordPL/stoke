  .text
  .globl __fp_lock_all
  .type __fp_lock_all, @function

#! file-offset 0x159ec0
#! rip-offset  0x119ec0
#! capacity    96 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.__fp_lock_all:              #        0x119ec0  0      OPC=0     
  subl $0x8, %esp            #  1     0x119ec0  3      OPC=2384  
  addq %r15, %rsp            #  2     0x119ec3  3      OPC=72    
  nop                        #  3     0x119ec6  1      OPC=1343  
  nop                        #  4     0x119ec7  1      OPC=1343  
  nop                        #  5     0x119ec8  1      OPC=1343  
  nop                        #  6     0x119ec9  1      OPC=1343  
  nop                        #  7     0x119eca  1      OPC=1343  
  nop                        #  8     0x119ecb  1      OPC=1343  
  nop                        #  9     0x119ecc  1      OPC=1343  
  nop                        #  10    0x119ecd  1      OPC=1343  
  nop                        #  11    0x119ece  1      OPC=1343  
  nop                        #  12    0x119ecf  1      OPC=1343  
  nop                        #  13    0x119ed0  1      OPC=1343  
  nop                        #  14    0x119ed1  1      OPC=1343  
  nop                        #  15    0x119ed2  1      OPC=1343  
  nop                        #  16    0x119ed3  1      OPC=1343  
  nop                        #  17    0x119ed4  1      OPC=1343  
  nop                        #  18    0x119ed5  1      OPC=1343  
  nop                        #  19    0x119ed6  1      OPC=1343  
  nop                        #  20    0x119ed7  1      OPC=1343  
  nop                        #  21    0x119ed8  1      OPC=1343  
  nop                        #  22    0x119ed9  1      OPC=1343  
  nop                        #  23    0x119eda  1      OPC=1343  
  callq .__sfp_lock_acquire  #  24    0x119edb  5      OPC=260   
  nop                        #  25    0x119ee0  1      OPC=1343  
  nop                        #  26    0x119ee1  1      OPC=1343  
  nop                        #  27    0x119ee2  1      OPC=1343  
  nop                        #  28    0x119ee3  1      OPC=1343  
  nop                        #  29    0x119ee4  1      OPC=1343  
  nop                        #  30    0x119ee5  1      OPC=1343  
  nop                        #  31    0x119ee6  1      OPC=1343  
  nop                        #  32    0x119ee7  1      OPC=1343  
  nop                        #  33    0x119ee8  1      OPC=1343  
  nop                        #  34    0x119ee9  1      OPC=1343  
  nop                        #  35    0x119eea  1      OPC=1343  
  nop                        #  36    0x119eeb  1      OPC=1343  
  nop                        #  37    0x119eec  1      OPC=1343  
  nop                        #  38    0x119eed  1      OPC=1343  
  nop                        #  39    0x119eee  1      OPC=1343  
  nop                        #  40    0x119eef  1      OPC=1343  
  nop                        #  41    0x119ef0  1      OPC=1343  
  nop                        #  42    0x119ef1  1      OPC=1343  
  nop                        #  43    0x119ef2  1      OPC=1343  
  nop                        #  44    0x119ef3  1      OPC=1343  
  nop                        #  45    0x119ef4  1      OPC=1343  
  nop                        #  46    0x119ef5  1      OPC=1343  
  nop                        #  47    0x119ef6  1      OPC=1343  
  nop                        #  48    0x119ef7  1      OPC=1343  
  nop                        #  49    0x119ef8  1      OPC=1343  
  nop                        #  50    0x119ef9  1      OPC=1343  
  nop                        #  51    0x119efa  1      OPC=1343  
  callq .__nacl_read_tp      #  52    0x119efb  5      OPC=260   
  leaq -0x480(%rax), %rax    #  53    0x119f00  7      OPC=1069  
  movl $0x119e40, %esi       #  54    0x119f07  5      OPC=1154  
  movl %eax, %eax            #  55    0x119f0c  2      OPC=1157  
  movl (%r15,%rax,1), %edi   #  56    0x119f0e  4      OPC=1156  
  addl $0x8, %esp            #  57    0x119f12  3      OPC=65    
  addq %r15, %rsp            #  58    0x119f15  3      OPC=72    
  jmpq ._fwalk               #  59    0x119f18  5      OPC=930   
  nop                        #  60    0x119f1d  1      OPC=1343  
  nop                        #  61    0x119f1e  1      OPC=1343  
  nop                        #  62    0x119f1f  1      OPC=1343  
                                                                 
.size __fp_lock_all, .-__fp_lock_all

