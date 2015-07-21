  .text
  .globl NextDownstreamConstraint
  .type NextDownstreamConstraint, @function

#! file-offset 0x6183
#! rip-offset  0x406183
#! capacity    164 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.NextDownstreamConstraint:  #        0x406183  0      OPC=0     
  pushq %r14                #  1     0x406183  2      OPC=1861  
  pushq %r13                #  2     0x406185  2      OPC=1861  
  pushq %r12                #  3     0x406187  2      OPC=1861  
  pushq %rbp                #  4     0x406189  1      OPC=1861  
  pushq %rbx                #  5     0x40618a  1      OPC=1861  
  movq %rdi, %r14           #  6     0x40618b  3      OPC=1162  
  movq 0x8(%rsi), %rax      #  7     0x40618e  4      OPC=1161  
  movq (%rax), %rdx         #  8     0x406192  3      OPC=1161  
  movslq 0xc(%rax), %rcx    #  9     0x406195  4      OPC=1288  
  leaq (%rdx,%rcx,8), %rbx  #  10    0x406199  4      OPC=1069  
  movslq 0x10(%rax), %rax   #  11    0x40619d  4      OPC=1288  
  leaq (%rdx,%rax,8), %rbp  #  12    0x4061a1  4      OPC=1069  
  movq 0x10(%rsi), %r13     #  13    0x4061a5  4      OPC=1161  
  xorl %r12d, %r12d         #  14    0x4061a9  3      OPC=3758  
  cmpq %rbp, %rbx           #  15    0x4061ac  3      OPC=477   
  jbe .L_4061c4             #  16    0x4061af  6      OPC=881   
  nop                       #  17    0x4061b5  1      OPC=1343  
  nop                       #  18    0x4061b6  1      OPC=1343  
  jmpq .L_4061f4            #  19    0x4061b7  5      OPC=930   
  nop                       #  20    0x4061bc  1      OPC=1343  
  nop                       #  21    0x4061bd  1      OPC=1343  
.L_4061b3:                  #        0x4061be  0      OPC=0     
  movq %r14, %rdi           #  22    0x4061be  3      OPC=1162  
  callq .List_Add           #  23    0x4061c1  5      OPC=260   
.L_4061bb:                  #        0x4061c6  0      OPC=0     
  addq $0x8, %rbx           #  24    0x4061c6  4      OPC=70    
  cmpq %rbx, %rbp           #  25    0x4061ca  3      OPC=477   
  jb .L_4061e3              #  26    0x4061cd  6      OPC=875   
  nop                       #  27    0x4061d3  1      OPC=1343  
  nop                       #  28    0x4061d4  1      OPC=1343  
.L_4061c4:                  #        0x4061d5  0      OPC=0     
  movq (%rbx), %rsi         #  29    0x4061d5  3      OPC=1161  
  cmpq %r13, %rsi           #  30    0x4061d8  3      OPC=477   
  je .L_4061bb              #  31    0x4061db  6      OPC=893   
  nop                       #  32    0x4061e1  1      OPC=1343  
  nop                       #  33    0x4061e2  1      OPC=1343  
  cmpb $0xff, 0x10(%rsi)    #  34    0x4061e3  4      OPC=461   
  je .L_4061bb              #  35    0x4061e7  6      OPC=893   
  nop                       #  36    0x4061ed  1      OPC=1343  
  nop                       #  37    0x4061ee  1      OPC=1343  
  testq %r12, %r12          #  38    0x4061ef  3      OPC=2438  
  jne .L_4061b3             #  39    0x4061f2  6      OPC=963   
  nop                       #  40    0x4061f8  1      OPC=1343  
  nop                       #  41    0x4061f9  1      OPC=1343  
  movq %rsi, %r12           #  42    0x4061fa  3      OPC=1162  
  addq $0x8, %rbx           #  43    0x4061fd  4      OPC=70    
  cmpq %rbx, %rbp           #  44    0x406201  3      OPC=477   
  jae .L_4061c4             #  45    0x406204  6      OPC=869   
  nop                       #  46    0x40620a  1      OPC=1343  
  nop                       #  47    0x40620b  1      OPC=1343  
.L_4061e3:                  #        0x40620c  0      OPC=0     
  testq %r12, %r12          #  48    0x40620c  3      OPC=2438  
  je .L_4061f4              #  49    0x40620f  6      OPC=893   
  nop                       #  50    0x406215  1      OPC=1343  
  nop                       #  51    0x406216  1      OPC=1343  
  movq %r12, %rax           #  52    0x406217  3      OPC=1162  
  popq %rbx                 #  53    0x40621a  1      OPC=1694  
  popq %rbp                 #  54    0x40621b  1      OPC=1694  
  popq %r12                 #  55    0x40621c  2      OPC=1694  
  popq %r13                 #  56    0x40621e  2      OPC=1694  
  popq %r14                 #  57    0x406220  2      OPC=1694  
  retq                      #  58    0x406222  1      OPC=1978  
.L_4061f4:                  #        0x406223  0      OPC=0     
  movslq 0xc(%r14), %rax    #  59    0x406223  4      OPC=1288  
  cmpl %eax, 0x10(%r14)     #  60    0x406227  4      OPC=457   
  jge .L_40620d             #  61    0x40622b  6      OPC=907   
  nop                       #  62    0x406231  1      OPC=1343  
  nop                       #  63    0x406232  1      OPC=1343  
  xorl %r12d, %r12d         #  64    0x406233  3      OPC=3758  
  movq %r12, %rax           #  65    0x406236  3      OPC=1162  
  popq %rbx                 #  66    0x406239  1      OPC=1694  
  popq %rbp                 #  67    0x40623a  1      OPC=1694  
  popq %r12                 #  68    0x40623b  2      OPC=1694  
  popq %r13                 #  69    0x40623d  2      OPC=1694  
  popq %r14                 #  70    0x40623f  2      OPC=1694  
  retq                      #  71    0x406241  1      OPC=1978  
.L_40620d:                  #        0x406242  0      OPC=0     
  movq (%r14), %rdx         #  72    0x406242  3      OPC=1161  
  leal 0x1(%rax), %ecx      #  73    0x406245  3      OPC=1066  
  movl %ecx, 0xc(%r14)      #  74    0x406248  4      OPC=1136  
  movq (%rdx,%rax,8), %r12  #  75    0x40624c  4      OPC=1161  
  movq %r12, %rax           #  76    0x406250  3      OPC=1162  
  popq %rbx                 #  77    0x406253  1      OPC=1694  
  popq %rbp                 #  78    0x406254  1      OPC=1694  
  popq %r12                 #  79    0x406255  2      OPC=1694  
  popq %r13                 #  80    0x406257  2      OPC=1694  
  popq %r14                 #  81    0x406259  2      OPC=1694  
  retq                      #  82    0x40625b  1      OPC=1978  
                                                                
.size NextDownstreamConstraint, .-NextDownstreamConstraint

