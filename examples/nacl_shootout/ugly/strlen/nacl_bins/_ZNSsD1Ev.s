  .text
  .globl _ZNSsD1Ev
  .type _ZNSsD1Ev, @function

#! file-offset 0xeb6e0
#! rip-offset  0xab6e0
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode    
._ZNSsD1Ev:                              #        0xab6e0  0      OPC=0     
  movl %edi, %edi                        #  1     0xab6e0  2      OPC=1157  
  subl $0x18, %esp                       #  2     0xab6e2  3      OPC=2384  
  addq %r15, %rsp                        #  3     0xab6e5  3      OPC=72    
  movl %edi, %edi                        #  4     0xab6e8  2      OPC=1157  
  movl (%r15,%rdi,1), %edi               #  5     0xab6ea  4      OPC=1156  
  subl $0xc, %edi                        #  6     0xab6ee  3      OPC=2384  
  cmpl $0x10073580, %edi                 #  7     0xab6f1  6      OPC=469   
  jne .L_ab720                           #  8     0xab6f7  6      OPC=963   
  nop                                    #  9     0xab6fd  1      OPC=1343  
  nop                                    #  10    0xab6fe  1      OPC=1343  
  nop                                    #  11    0xab6ff  1      OPC=1343  
  nop                                    #  12    0xab700  1      OPC=1343  
  nop                                    #  13    0xab701  1      OPC=1343  
  nop                                    #  14    0xab702  1      OPC=1343  
  nop                                    #  15    0xab703  1      OPC=1343  
  nop                                    #  16    0xab704  1      OPC=1343  
  nop                                    #  17    0xab705  1      OPC=1343  
.L_ab700:                                #        0xab706  0      OPC=0     
  addl $0x18, %esp                       #  18    0xab706  3      OPC=65    
  addq %r15, %rsp                        #  19    0xab709  3      OPC=72    
  popq %r11                              #  20    0xab70c  2      OPC=1694  
  andl $0xffffffe0, %r11d                #  21    0xab70e  7      OPC=131   
  nop                                    #  22    0xab715  1      OPC=1343  
  nop                                    #  23    0xab716  1      OPC=1343  
  nop                                    #  24    0xab717  1      OPC=1343  
  nop                                    #  25    0xab718  1      OPC=1343  
  addq %r15, %r11                        #  26    0xab719  3      OPC=72    
  jmpq %r11                              #  27    0xab71c  3      OPC=928   
  nop                                    #  28    0xab71f  1      OPC=1343  
  nop                                    #  29    0xab720  1      OPC=1343  
  nop                                    #  30    0xab721  1      OPC=1343  
  nop                                    #  31    0xab722  1      OPC=1343  
  nop                                    #  32    0xab723  1      OPC=1343  
  nop                                    #  33    0xab724  1      OPC=1343  
  nop                                    #  34    0xab725  1      OPC=1343  
  nop                                    #  35    0xab726  1      OPC=1343  
  nop                                    #  36    0xab727  1      OPC=1343  
  nop                                    #  37    0xab728  1      OPC=1343  
  nop                                    #  38    0xab729  1      OPC=1343  
  nop                                    #  39    0xab72a  1      OPC=1343  
  nop                                    #  40    0xab72b  1      OPC=1343  
  nop                                    #  41    0xab72c  1      OPC=1343  
.L_ab720:                                #        0xab72d  0      OPC=0     
  movl %edi, %edi                        #  42    0xab72d  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax            #  43    0xab72f  5      OPC=1156  
  leal -0x1(%rax), %edx                  #  44    0xab734  3      OPC=1066  
  testl %eax, %eax                       #  45    0xab737  2      OPC=2436  
  movl %edi, %edi                        #  46    0xab739  2      OPC=1157  
  movl %edx, 0x8(%r15,%rdi,1)            #  47    0xab73b  5      OPC=1136  
  jg .L_ab700                            #  48    0xab740  6      OPC=901   
  nop                                    #  49    0xab746  1      OPC=1343  
  nop                                    #  50    0xab747  1      OPC=1343  
  leal 0xf(%rsp), %esi                   #  51    0xab748  4      OPC=1066  
  xchgw %ax, %ax                         #  52    0xab74c  2      OPC=3700  
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  53    0xab74e  5      OPC=260   
  jmpq .L_ab700                          #  54    0xab753  5      OPC=930   
  nop                                    #  55    0xab758  1      OPC=1343  
  nop                                    #  56    0xab759  1      OPC=1343  
  nop                                    #  57    0xab75a  1      OPC=1343  
  nop                                    #  58    0xab75b  1      OPC=1343  
  nop                                    #  59    0xab75c  1      OPC=1343  
  nop                                    #  60    0xab75d  1      OPC=1343  
  nop                                    #  61    0xab75e  1      OPC=1343  
  nop                                    #  62    0xab75f  1      OPC=1343  
  nop                                    #  63    0xab760  1      OPC=1343  
  nop                                    #  64    0xab761  1      OPC=1343  
  nop                                    #  65    0xab762  1      OPC=1343  
  nop                                    #  66    0xab763  1      OPC=1343  
  nop                                    #  67    0xab764  1      OPC=1343  
  nop                                    #  68    0xab765  1      OPC=1343  
  nop                                    #  69    0xab766  1      OPC=1343  
  nop                                    #  70    0xab767  1      OPC=1343  
  nop                                    #  71    0xab768  1      OPC=1343  
  nop                                    #  72    0xab769  1      OPC=1343  
  nop                                    #  73    0xab76a  1      OPC=1343  
  nop                                    #  74    0xab76b  1      OPC=1343  
  nop                                    #  75    0xab76c  1      OPC=1343  
  nop                                    #  76    0xab76d  1      OPC=1343  
  nop                                    #  77    0xab76e  1      OPC=1343  
  nop                                    #  78    0xab76f  1      OPC=1343  
  nop                                    #  79    0xab770  1      OPC=1343  
  nop                                    #  80    0xab771  1      OPC=1343  
  nop                                    #  81    0xab772  1      OPC=1343  
  nop                                    #  82    0xab773  1      OPC=1343  
  nop                                    #  83    0xab774  1      OPC=1343  
  nop                                    #  84    0xab775  1      OPC=1343  
  nop                                    #  85    0xab776  1      OPC=1343  
  nop                                    #  86    0xab777  1      OPC=1343  
                                                                            
.size _ZNSsD1Ev, .-_ZNSsD1Ev

