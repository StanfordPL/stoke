  .text
  .globl exit
  .type exit, @function

#! file-offset 0x158fc0
#! rip-offset  0x118fc0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.exit:                          #        0x118fc0  0      OPC=0     
  pushq %rbx                    #  1     0x118fc0  1      OPC=1861  
  xorl %esi, %esi               #  2     0x118fc1  2      OPC=3758  
  movl %edi, %ebx               #  3     0x118fc3  2      OPC=1157  
  nop                           #  4     0x118fc5  1      OPC=1343  
  nop                           #  5     0x118fc6  1      OPC=1343  
  nop                           #  6     0x118fc7  1      OPC=1343  
  nop                           #  7     0x118fc8  1      OPC=1343  
  nop                           #  8     0x118fc9  1      OPC=1343  
  nop                           #  9     0x118fca  1      OPC=1343  
  nop                           #  10    0x118fcb  1      OPC=1343  
  nop                           #  11    0x118fcc  1      OPC=1343  
  nop                           #  12    0x118fcd  1      OPC=1343  
  nop                           #  13    0x118fce  1      OPC=1343  
  nop                           #  14    0x118fcf  1      OPC=1343  
  nop                           #  15    0x118fd0  1      OPC=1343  
  nop                           #  16    0x118fd1  1      OPC=1343  
  nop                           #  17    0x118fd2  1      OPC=1343  
  nop                           #  18    0x118fd3  1      OPC=1343  
  nop                           #  19    0x118fd4  1      OPC=1343  
  nop                           #  20    0x118fd5  1      OPC=1343  
  nop                           #  21    0x118fd6  1      OPC=1343  
  nop                           #  22    0x118fd7  1      OPC=1343  
  nop                           #  23    0x118fd8  1      OPC=1343  
  nop                           #  24    0x118fd9  1      OPC=1343  
  nop                           #  25    0x118fda  1      OPC=1343  
  callq .__call_exitprocs       #  26    0x118fdb  5      OPC=260   
  movl 0xff27dfa(%rip), %edi    #  27    0x118fe0  6      OPC=1156  
  movl %edi, %edi               #  28    0x118fe6  2      OPC=1157  
  movl 0x3c(%r15,%rdi,1), %eax  #  29    0x118fe8  5      OPC=1156  
  testq %rax, %rax              #  30    0x118fed  3      OPC=2438  
  je .L_119000                  #  31    0x118ff0  6      OPC=893   
  nop                           #  32    0x118ff6  1      OPC=1343  
  nop                           #  33    0x118ff7  1      OPC=1343  
  nop                           #  34    0x118ff8  1      OPC=1343  
  nop                           #  35    0x118ff9  1      OPC=1343  
  nop                           #  36    0x118ffa  1      OPC=1343  
  nop                           #  37    0x118ffb  1      OPC=1343  
  nop                           #  38    0x118ffc  1      OPC=1343  
  nop                           #  39    0x118ffd  1      OPC=1343  
  andl $0xffffffe0, %eax        #  40    0x118ffe  6      OPC=131   
  nop                           #  41    0x119004  1      OPC=1343  
  nop                           #  42    0x119005  1      OPC=1343  
  nop                           #  43    0x119006  1      OPC=1343  
  addq %r15, %rax               #  44    0x119007  3      OPC=72    
  callq %rax                    #  45    0x11900a  2      OPC=258   
.L_119000:                      #        0x11900c  0      OPC=0     
  movl %ebx, %edi               #  46    0x11900c  2      OPC=1157  
  nop                           #  47    0x11900e  1      OPC=1343  
  nop                           #  48    0x11900f  1      OPC=1343  
  nop                           #  49    0x119010  1      OPC=1343  
  nop                           #  50    0x119011  1      OPC=1343  
  nop                           #  51    0x119012  1      OPC=1343  
  nop                           #  52    0x119013  1      OPC=1343  
  nop                           #  53    0x119014  1      OPC=1343  
  nop                           #  54    0x119015  1      OPC=1343  
  nop                           #  55    0x119016  1      OPC=1343  
  nop                           #  56    0x119017  1      OPC=1343  
  nop                           #  57    0x119018  1      OPC=1343  
  nop                           #  58    0x119019  1      OPC=1343  
  nop                           #  59    0x11901a  1      OPC=1343  
  nop                           #  60    0x11901b  1      OPC=1343  
  nop                           #  61    0x11901c  1      OPC=1343  
  nop                           #  62    0x11901d  1      OPC=1343  
  nop                           #  63    0x11901e  1      OPC=1343  
  nop                           #  64    0x11901f  1      OPC=1343  
  nop                           #  65    0x119020  1      OPC=1343  
  nop                           #  66    0x119021  1      OPC=1343  
  nop                           #  67    0x119022  1      OPC=1343  
  nop                           #  68    0x119023  1      OPC=1343  
  nop                           #  69    0x119024  1      OPC=1343  
  nop                           #  70    0x119025  1      OPC=1343  
  nop                           #  71    0x119026  1      OPC=1343  
  callq ._exit                  #  72    0x119027  5      OPC=260   
                                                                    
.size exit, .-exit

