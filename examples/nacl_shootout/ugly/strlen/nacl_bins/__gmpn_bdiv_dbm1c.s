  .text
  .globl __gmpn_bdiv_dbm1c
  .type __gmpn_bdiv_dbm1c, @function

#! file-offset 0x953e0
#! rip-offset  0x553e0
#! capacity    224 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.__gmpn_bdiv_dbm1c:          #        0x553e0  0      OPC=0     
  pushq %r13                 #  1     0x553e0  2      OPC=1861  
  testl %edx, %edx           #  2     0x553e2  2      OPC=2436  
  movl %edi, %edi            #  3     0x553e4  2      OPC=1157  
  movl %esi, %esi            #  4     0x553e6  2      OPC=1157  
  pushq %r12                 #  5     0x553e8  2      OPC=1861  
  pushq %rbx                 #  6     0x553ea  1      OPC=1861  
  jle .L_554a0               #  7     0x553eb  6      OPC=919   
  movzwl %cx, %r12d          #  8     0x553f1  4      OPC=1303  
  xorl %r10d, %r10d          #  9     0x553f5  3      OPC=3758  
  shrl $0x10, %ecx           #  10    0x553f8  3      OPC=2312  
  nop                        #  11    0x553fb  1      OPC=1343  
  nop                        #  12    0x553fc  1      OPC=1343  
  nop                        #  13    0x553fd  1      OPC=1343  
  nop                        #  14    0x553fe  1      OPC=1343  
  nop                        #  15    0x553ff  1      OPC=1343  
.L_55400:                    #        0x55400  0      OPC=0     
  movl %esi, %eax            #  16    0x55400  2      OPC=1157  
  movl %r12d, %ebx           #  17    0x55402  3      OPC=1157  
  movl %r12d, %r11d          #  18    0x55405  3      OPC=1157  
  movl %eax, %eax            #  19    0x55408  2      OPC=1157  
  movl (%r15,%rax,1), %eax   #  20    0x5540a  4      OPC=1156  
  movzwl %ax, %r9d           #  21    0x5540e  4      OPC=1303  
  shrl $0x10, %eax           #  22    0x55412  3      OPC=2312  
  imull %r9d, %ebx           #  23    0x55415  4      OPC=821   
  imull %eax, %r11d          #  24    0x55419  4      OPC=821   
  movl %ebx, %r13d           #  25    0x5541d  3      OPC=1157  
  imull %ecx, %r9d           #  26    0x55420  4      OPC=821   
  shrl $0x10, %r13d          #  27    0x55424  4      OPC=2312  
  imull %ecx, %eax           #  28    0x55428  3      OPC=821   
  leal (%r11,%r9,1), %r9d    #  29    0x5542b  4      OPC=1066  
  addl %r13d, %r9d           #  30    0x5542f  3      OPC=67    
  leal 0x10000(%rax), %r13d  #  31    0x55432  7      OPC=1066  
  cmpl %r9d, %r11d           #  32    0x55439  3      OPC=472   
  movl %r9d, %r11d           #  33    0x5543c  3      OPC=1157  
  nop                        #  34    0x5543f  1      OPC=1343  
  cmoval %r13d, %eax         #  35    0x55440  4      OPC=272   
  andl $0xffff, %ebx         #  36    0x55444  6      OPC=131   
  shll $0x10, %r11d          #  37    0x5544a  4      OPC=2269  
  addl %ebx, %r11d           #  38    0x5544e  3      OPC=67    
  movl %r8d, %ebx            #  39    0x55451  3      OPC=1157  
  movl %edi, %r13d           #  40    0x55454  3      OPC=1157  
  subl %r11d, %ebx           #  41    0x55457  3      OPC=2386  
  shrl $0x10, %r9d           #  42    0x5545a  4      OPC=2312  
  xchgw %ax, %ax             #  43    0x5545e  2      OPC=3700  
  movl %r13d, %r13d          #  44    0x55460  3      OPC=1157  
  movl %ebx, (%r15,%r13,1)   #  45    0x55463  4      OPC=1136  
  subl %r9d, %ebx            #  46    0x55467  3      OPC=2386  
  cmpl %r11d, %r8d           #  47    0x5546a  3      OPC=472   
  setb %r8b                  #  48    0x5546d  4      OPC=2169  
  addl $0x1, %r10d           #  49    0x55471  4      OPC=65    
  addl $0x4, %esi            #  50    0x55475  3      OPC=65    
  movzbl %r8b, %r8d          #  51    0x55478  4      OPC=1304  
  addl $0x4, %edi            #  52    0x5547c  3      OPC=65    
  nop                        #  53    0x5547f  1      OPC=1343  
  subl %r8d, %ebx            #  54    0x55480  3      OPC=2386  
  movl %ebx, %r8d            #  55    0x55483  3      OPC=1157  
  subl %eax, %r8d            #  56    0x55486  3      OPC=2386  
  cmpl %edx, %r10d           #  57    0x55489  3      OPC=472   
  jne .L_55400               #  58    0x5548c  6      OPC=963   
  nop                        #  59    0x55492  1      OPC=1343  
  nop                        #  60    0x55493  1      OPC=1343  
  nop                        #  61    0x55494  1      OPC=1343  
  nop                        #  62    0x55495  1      OPC=1343  
  nop                        #  63    0x55496  1      OPC=1343  
  nop                        #  64    0x55497  1      OPC=1343  
  nop                        #  65    0x55498  1      OPC=1343  
  nop                        #  66    0x55499  1      OPC=1343  
  nop                        #  67    0x5549a  1      OPC=1343  
  nop                        #  68    0x5549b  1      OPC=1343  
  nop                        #  69    0x5549c  1      OPC=1343  
  nop                        #  70    0x5549d  1      OPC=1343  
  nop                        #  71    0x5549e  1      OPC=1343  
  nop                        #  72    0x5549f  1      OPC=1343  
.L_554a0:                    #        0x554a0  0      OPC=0     
  popq %rbx                  #  73    0x554a0  1      OPC=1694  
  popq %r12                  #  74    0x554a1  2      OPC=1694  
  popq %r13                  #  75    0x554a3  2      OPC=1694  
  popq %r11                  #  76    0x554a5  2      OPC=1694  
  movl %r8d, %eax            #  77    0x554a7  3      OPC=1157  
  andl $0xffffffe0, %r11d    #  78    0x554aa  7      OPC=131   
  nop                        #  79    0x554b1  1      OPC=1343  
  nop                        #  80    0x554b2  1      OPC=1343  
  nop                        #  81    0x554b3  1      OPC=1343  
  nop                        #  82    0x554b4  1      OPC=1343  
  addq %r15, %r11            #  83    0x554b5  3      OPC=72    
  jmpq %r11                  #  84    0x554b8  3      OPC=928   
  nop                        #  85    0x554bb  1      OPC=1343  
  nop                        #  86    0x554bc  1      OPC=1343  
  nop                        #  87    0x554bd  1      OPC=1343  
  nop                        #  88    0x554be  1      OPC=1343  
  nop                        #  89    0x554bf  1      OPC=1343  
  nop                        #  90    0x554c0  1      OPC=1343  
  nop                        #  91    0x554c1  1      OPC=1343  
  nop                        #  92    0x554c2  1      OPC=1343  
  nop                        #  93    0x554c3  1      OPC=1343  
  nop                        #  94    0x554c4  1      OPC=1343  
  nop                        #  95    0x554c5  1      OPC=1343  
  nop                        #  96    0x554c6  1      OPC=1343  
                                                                
.size __gmpn_bdiv_dbm1c, .-__gmpn_bdiv_dbm1c

