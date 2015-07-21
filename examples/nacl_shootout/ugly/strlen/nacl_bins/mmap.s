  .text
  .globl mmap
  .type mmap, @function

#! file-offset 0x1581e0
#! rip-offset  0x1181e0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.mmap:                        #        0x1181e0  0      OPC=0     
  pushq %rbx                  #  1     0x1181e0  1      OPC=1861  
  subl $0x10, %esp            #  2     0x1181e1  3      OPC=2384  
  addq %r15, %rsp             #  3     0x1181e4  3      OPC=72    
  movl 0xff61053(%rip), %eax  #  4     0x1181e7  6      OPC=1156  
  movl %edi, 0xc(%rsp)        #  5     0x1181ed  4      OPC=1136  
  leal 0xc(%rsp), %edi        #  6     0x1181f1  4      OPC=1066  
  nop                         #  7     0x1181f5  1      OPC=1343  
  nop                         #  8     0x1181f6  1      OPC=1343  
  nop                         #  9     0x1181f7  1      OPC=1343  
  andl $0xffffffe0, %eax      #  10    0x1181f8  6      OPC=131   
  nop                         #  11    0x1181fe  1      OPC=1343  
  nop                         #  12    0x1181ff  1      OPC=1343  
  nop                         #  13    0x118200  1      OPC=1343  
  addq %r15, %rax             #  14    0x118201  3      OPC=72    
  callq %rax                  #  15    0x118204  2      OPC=258   
  testl %eax, %eax            #  16    0x118206  2      OPC=2436  
  movl %eax, %ebx             #  17    0x118208  2      OPC=1157  
  jne .L_118220               #  18    0x11820a  6      OPC=963   
  nop                         #  19    0x118210  1      OPC=1343  
  nop                         #  20    0x118211  1      OPC=1343  
  movl 0xc(%rsp), %eax        #  21    0x118212  4      OPC=1156  
  addl $0x10, %esp            #  22    0x118216  3      OPC=65    
  addq %r15, %rsp             #  23    0x118219  3      OPC=72    
  popq %rbx                   #  24    0x11821c  1      OPC=1694  
  popq %r11                   #  25    0x11821d  2      OPC=1694  
  andl $0xffffffe0, %r11d     #  26    0x11821f  7      OPC=131   
  nop                         #  27    0x118226  1      OPC=1343  
  nop                         #  28    0x118227  1      OPC=1343  
  nop                         #  29    0x118228  1      OPC=1343  
  nop                         #  30    0x118229  1      OPC=1343  
  addq %r15, %r11             #  31    0x11822a  3      OPC=72    
  jmpq %r11                   #  32    0x11822d  3      OPC=928   
  nop                         #  33    0x118230  1      OPC=1343  
  nop                         #  34    0x118231  1      OPC=1343  
  nop                         #  35    0x118232  1      OPC=1343  
.L_118220:                    #        0x118233  0      OPC=0     
  nop                         #  36    0x118233  1      OPC=1343  
  nop                         #  37    0x118234  1      OPC=1343  
  nop                         #  38    0x118235  1      OPC=1343  
  nop                         #  39    0x118236  1      OPC=1343  
  nop                         #  40    0x118237  1      OPC=1343  
  nop                         #  41    0x118238  1      OPC=1343  
  nop                         #  42    0x118239  1      OPC=1343  
  nop                         #  43    0x11823a  1      OPC=1343  
  nop                         #  44    0x11823b  1      OPC=1343  
  nop                         #  45    0x11823c  1      OPC=1343  
  nop                         #  46    0x11823d  1      OPC=1343  
  nop                         #  47    0x11823e  1      OPC=1343  
  nop                         #  48    0x11823f  1      OPC=1343  
  nop                         #  49    0x118240  1      OPC=1343  
  nop                         #  50    0x118241  1      OPC=1343  
  nop                         #  51    0x118242  1      OPC=1343  
  nop                         #  52    0x118243  1      OPC=1343  
  nop                         #  53    0x118244  1      OPC=1343  
  nop                         #  54    0x118245  1      OPC=1343  
  nop                         #  55    0x118246  1      OPC=1343  
  nop                         #  56    0x118247  1      OPC=1343  
  nop                         #  57    0x118248  1      OPC=1343  
  nop                         #  58    0x118249  1      OPC=1343  
  nop                         #  59    0x11824a  1      OPC=1343  
  nop                         #  60    0x11824b  1      OPC=1343  
  nop                         #  61    0x11824c  1      OPC=1343  
  nop                         #  62    0x11824d  1      OPC=1343  
  callq .__errno              #  63    0x11824e  5      OPC=260   
  movl %eax, %eax             #  64    0x118253  2      OPC=1157  
  movl %eax, %eax             #  65    0x118255  2      OPC=1157  
  movl %ebx, (%r15,%rax,1)    #  66    0x118257  4      OPC=1136  
  addl $0x10, %esp            #  67    0x11825b  3      OPC=65    
  addq %r15, %rsp             #  68    0x11825e  3      OPC=72    
  movl $0xffffffff, %eax      #  69    0x118261  6      OPC=1155  
  popq %rbx                   #  70    0x118267  1      OPC=1694  
  popq %r11                   #  71    0x118268  2      OPC=1694  
  andl $0xffffffe0, %r11d     #  72    0x11826a  7      OPC=131   
  nop                         #  73    0x118271  1      OPC=1343  
  nop                         #  74    0x118272  1      OPC=1343  
  nop                         #  75    0x118273  1      OPC=1343  
  nop                         #  76    0x118274  1      OPC=1343  
  addq %r15, %r11             #  77    0x118275  3      OPC=72    
  jmpq %r11                   #  78    0x118278  3      OPC=928   
                                                                  
.size mmap, .-mmap

