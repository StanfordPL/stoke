  .text
  .globl Constraint_Destroy
  .type Constraint_Destroy, @function

#! file-offset 0x66e40
#! rip-offset  0x26e40
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.Constraint_Destroy:        #        0x26e40  0      OPC=0     
  pushq %rbx                #  1     0x26e40  1      OPC=1861  
  movl %edi, %ebx           #  2     0x26e41  2      OPC=1157  
  movl %ebx, %ebx           #  3     0x26e43  2      OPC=1157  
  movl (%r15,%rbx,1), %r9d  #  4     0x26e45  4      OPC=1156  
  testl %r9d, %r9d          #  5     0x26e49  3      OPC=2436  
  je .L_26e60               #  6     0x26e4c  6      OPC=893   
  nop                       #  7     0x26e52  1      OPC=1343  
  nop                       #  8     0x26e53  1      OPC=1343  
  movl %ebx, %ebx           #  9     0x26e54  2      OPC=1157  
  movl $0x0, (%r15,%rbx,1)  #  10    0x26e56  8      OPC=1135  
  movl %ebx, %edi           #  11    0x26e5e  2      OPC=1157  
  popq %rbx                 #  12    0x26e60  1      OPC=1694  
  jmpq .free                #  13    0x26e61  5      OPC=930   
.L_26e60:                   #        0x26e66  0      OPC=0     
  movl $0x10020bf0, %edi    #  14    0x26e66  5      OPC=1154  
  nop                       #  15    0x26e6b  1      OPC=1343  
  nop                       #  16    0x26e6c  1      OPC=1343  
  nop                       #  17    0x26e6d  1      OPC=1343  
  nop                       #  18    0x26e6e  1      OPC=1343  
  nop                       #  19    0x26e6f  1      OPC=1343  
  nop                       #  20    0x26e70  1      OPC=1343  
  nop                       #  21    0x26e71  1      OPC=1343  
  nop                       #  22    0x26e72  1      OPC=1343  
  nop                       #  23    0x26e73  1      OPC=1343  
  nop                       #  24    0x26e74  1      OPC=1343  
  nop                       #  25    0x26e75  1      OPC=1343  
  nop                       #  26    0x26e76  1      OPC=1343  
  nop                       #  27    0x26e77  1      OPC=1343  
  nop                       #  28    0x26e78  1      OPC=1343  
  nop                       #  29    0x26e79  1      OPC=1343  
  nop                       #  30    0x26e7a  1      OPC=1343  
  nop                       #  31    0x26e7b  1      OPC=1343  
  nop                       #  32    0x26e7c  1      OPC=1343  
  nop                       #  33    0x26e7d  1      OPC=1343  
  nop                       #  34    0x26e7e  1      OPC=1343  
  nop                       #  35    0x26e7f  1      OPC=1343  
  nop                       #  36    0x26e80  1      OPC=1343  
  callq .Error              #  37    0x26e81  5      OPC=260   
  movl %ebx, %ebx           #  38    0x26e86  2      OPC=1157  
  movl $0x0, (%r15,%rbx,1)  #  39    0x26e88  8      OPC=1135  
  movl %ebx, %edi           #  40    0x26e90  2      OPC=1157  
  popq %rbx                 #  41    0x26e92  1      OPC=1694  
  jmpq .free                #  42    0x26e93  5      OPC=930   
  nop                       #  43    0x26e98  1      OPC=1343  
  nop                       #  44    0x26e99  1      OPC=1343  
  nop                       #  45    0x26e9a  1      OPC=1343  
  nop                       #  46    0x26e9b  1      OPC=1343  
  nop                       #  47    0x26e9c  1      OPC=1343  
  nop                       #  48    0x26e9d  1      OPC=1343  
  nop                       #  49    0x26e9e  1      OPC=1343  
  nop                       #  50    0x26e9f  1      OPC=1343  
  nop                       #  51    0x26ea0  1      OPC=1343  
  nop                       #  52    0x26ea1  1      OPC=1343  
  nop                       #  53    0x26ea2  1      OPC=1343  
  nop                       #  54    0x26ea3  1      OPC=1343  
  nop                       #  55    0x26ea4  1      OPC=1343  
  nop                       #  56    0x26ea5  1      OPC=1343  
                                                               
.size Constraint_Destroy, .-Constraint_Destroy

