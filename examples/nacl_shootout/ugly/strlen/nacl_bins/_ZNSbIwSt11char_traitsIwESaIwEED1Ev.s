  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEED1Ev
  .type _ZNSbIwSt11char_traitsIwESaIwEED1Ev, @function

#! file-offset 0x1176e0
#! rip-offset  0xd76e0
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEED1Ev:                            #        0xd76e0  0      OPC=0     
  movl %edi, %edi                                                #  1     0xd76e0  2      OPC=1157  
  subl $0x18, %esp                                               #  2     0xd76e2  3      OPC=2384  
  addq %r15, %rsp                                                #  3     0xd76e5  3      OPC=72    
  movl %edi, %edi                                                #  4     0xd76e8  2      OPC=1157  
  movl (%r15,%rdi,1), %edi                                       #  5     0xd76ea  4      OPC=1156  
  subl $0xc, %edi                                                #  6     0xd76ee  3      OPC=2384  
  cmpl $0x10073620, %edi                                         #  7     0xd76f1  6      OPC=469   
  jne .L_d7720                                                   #  8     0xd76f7  6      OPC=963   
  nop                                                            #  9     0xd76fd  1      OPC=1343  
  nop                                                            #  10    0xd76fe  1      OPC=1343  
  nop                                                            #  11    0xd76ff  1      OPC=1343  
  nop                                                            #  12    0xd7700  1      OPC=1343  
  nop                                                            #  13    0xd7701  1      OPC=1343  
  nop                                                            #  14    0xd7702  1      OPC=1343  
  nop                                                            #  15    0xd7703  1      OPC=1343  
  nop                                                            #  16    0xd7704  1      OPC=1343  
  nop                                                            #  17    0xd7705  1      OPC=1343  
.L_d7700:                                                        #        0xd7706  0      OPC=0     
  addl $0x18, %esp                                               #  18    0xd7706  3      OPC=65    
  addq %r15, %rsp                                                #  19    0xd7709  3      OPC=72    
  popq %r11                                                      #  20    0xd770c  2      OPC=1694  
  andl $0xffffffe0, %r11d                                        #  21    0xd770e  7      OPC=131   
  nop                                                            #  22    0xd7715  1      OPC=1343  
  nop                                                            #  23    0xd7716  1      OPC=1343  
  nop                                                            #  24    0xd7717  1      OPC=1343  
  nop                                                            #  25    0xd7718  1      OPC=1343  
  addq %r15, %r11                                                #  26    0xd7719  3      OPC=72    
  jmpq %r11                                                      #  27    0xd771c  3      OPC=928   
  nop                                                            #  28    0xd771f  1      OPC=1343  
  nop                                                            #  29    0xd7720  1      OPC=1343  
  nop                                                            #  30    0xd7721  1      OPC=1343  
  nop                                                            #  31    0xd7722  1      OPC=1343  
  nop                                                            #  32    0xd7723  1      OPC=1343  
  nop                                                            #  33    0xd7724  1      OPC=1343  
  nop                                                            #  34    0xd7725  1      OPC=1343  
  nop                                                            #  35    0xd7726  1      OPC=1343  
  nop                                                            #  36    0xd7727  1      OPC=1343  
  nop                                                            #  37    0xd7728  1      OPC=1343  
  nop                                                            #  38    0xd7729  1      OPC=1343  
  nop                                                            #  39    0xd772a  1      OPC=1343  
  nop                                                            #  40    0xd772b  1      OPC=1343  
  nop                                                            #  41    0xd772c  1      OPC=1343  
.L_d7720:                                                        #        0xd772d  0      OPC=0     
  movl %edi, %edi                                                #  42    0xd772d  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax                                    #  43    0xd772f  5      OPC=1156  
  leal -0x1(%rax), %edx                                          #  44    0xd7734  3      OPC=1066  
  testl %eax, %eax                                               #  45    0xd7737  2      OPC=2436  
  movl %edi, %edi                                                #  46    0xd7739  2      OPC=1157  
  movl %edx, 0x8(%r15,%rdi,1)                                    #  47    0xd773b  5      OPC=1136  
  jg .L_d7700                                                    #  48    0xd7740  6      OPC=901   
  nop                                                            #  49    0xd7746  1      OPC=1343  
  nop                                                            #  50    0xd7747  1      OPC=1343  
  leal 0xf(%rsp), %esi                                           #  51    0xd7748  4      OPC=1066  
  xchgw %ax, %ax                                                 #  52    0xd774c  2      OPC=3700  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  53    0xd774e  5      OPC=260   
  jmpq .L_d7700                                                  #  54    0xd7753  5      OPC=930   
  nop                                                            #  55    0xd7758  1      OPC=1343  
  nop                                                            #  56    0xd7759  1      OPC=1343  
  nop                                                            #  57    0xd775a  1      OPC=1343  
  nop                                                            #  58    0xd775b  1      OPC=1343  
  nop                                                            #  59    0xd775c  1      OPC=1343  
  nop                                                            #  60    0xd775d  1      OPC=1343  
  nop                                                            #  61    0xd775e  1      OPC=1343  
  nop                                                            #  62    0xd775f  1      OPC=1343  
  nop                                                            #  63    0xd7760  1      OPC=1343  
  nop                                                            #  64    0xd7761  1      OPC=1343  
  nop                                                            #  65    0xd7762  1      OPC=1343  
  nop                                                            #  66    0xd7763  1      OPC=1343  
  nop                                                            #  67    0xd7764  1      OPC=1343  
  nop                                                            #  68    0xd7765  1      OPC=1343  
  nop                                                            #  69    0xd7766  1      OPC=1343  
  nop                                                            #  70    0xd7767  1      OPC=1343  
  nop                                                            #  71    0xd7768  1      OPC=1343  
  nop                                                            #  72    0xd7769  1      OPC=1343  
  nop                                                            #  73    0xd776a  1      OPC=1343  
  nop                                                            #  74    0xd776b  1      OPC=1343  
  nop                                                            #  75    0xd776c  1      OPC=1343  
  nop                                                            #  76    0xd776d  1      OPC=1343  
  nop                                                            #  77    0xd776e  1      OPC=1343  
  nop                                                            #  78    0xd776f  1      OPC=1343  
  nop                                                            #  79    0xd7770  1      OPC=1343  
  nop                                                            #  80    0xd7771  1      OPC=1343  
  nop                                                            #  81    0xd7772  1      OPC=1343  
  nop                                                            #  82    0xd7773  1      OPC=1343  
  nop                                                            #  83    0xd7774  1      OPC=1343  
  nop                                                            #  84    0xd7775  1      OPC=1343  
  nop                                                            #  85    0xd7776  1      OPC=1343  
  nop                                                            #  86    0xd7777  1      OPC=1343  
                                                                                                    
.size _ZNSbIwSt11char_traitsIwESaIwEED1Ev, .-_ZNSbIwSt11char_traitsIwESaIwEED1Ev

