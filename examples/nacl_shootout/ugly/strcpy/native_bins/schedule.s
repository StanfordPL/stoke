  .text
  .globl schedule
  .type schedule, @function

#! file-offset 0x50e5
#! rip-offset  0x4050e5
#! capacity    241 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.schedule:                   #        0x4050e5  0      OPC=0     
  pushq %rbp                 #  1     0x4050e5  1      OPC=1861  
  pushq %rbx                 #  2     0x4050e6  1      OPC=1861  
  subq $0x8, %rsp            #  3     0x4050e7  4      OPC=2389  
  movq 0x220916(%rip), %rax  #  4     0x4050eb  7      OPC=1161  
  movl $0x1, %ebx            #  5     0x4050f2  5      OPC=1154  
.L_4050f7:                   #        0x4050f7  0      OPC=0     
  testq %rax, %rax           #  6     0x4050f7  3      OPC=2438  
  je .L_4051a6               #  7     0x4050fa  6      OPC=893   
.L_405100:                   #        0x405100  0      OPC=0     
  movl 0x18(%rax), %ecx      #  8     0x405100  3      OPC=1156  
  cmpl $0x7, %ecx            #  9     0x405103  3      OPC=470   
  ja .L_4051a6               #  10    0x405106  6      OPC=863   
  movq %rbx, %rsi            #  11    0x40510c  3      OPC=1162  
  shlq %cl, %rsi             #  12    0x40510f  3      OPC=2271  
  movq %rsi, %rcx            #  13    0x405112  3      OPC=1162  
  testb $0xf4, %sil          #  14    0x405115  4      OPC=2439  
  jne .L_4051ad              #  15    0x405119  6      OPC=963   
  testb $0x3, %sil           #  16    0x40511f  4      OPC=2439  
  jne .L_4051bc              #  17    0x405123  6      OPC=963   
  andb $0x8, %cl             #  18    0x405129  3      OPC=141   
  je .L_4051a6               #  19    0x40512c  6      OPC=893   
  nop                        #  20    0x405132  1      OPC=1343  
  nop                        #  21    0x405133  1      OPC=1343  
  movq 0x10(%rax), %rbp      #  22    0x405134  4      OPC=1161  
  movq (%rbp), %rdx          #  23    0x405138  4      OPC=1161  
  movq %rdx, 0x10(%rax)      #  24    0x40513c  4      OPC=1138  
  testq %rdx, %rdx           #  25    0x405140  3      OPC=2438  
  setne %dl                  #  26    0x405143  3      OPC=2208  
  movzbl %dl, %edx           #  27    0x405146  3      OPC=1304  
  movl %edx, 0x18(%rax)      #  28    0x405149  3      OPC=1136  
.L_405146:                   #        0x40514c  0      OPC=0     
  movl 0x8(%rax), %edi       #  29    0x40514c  3      OPC=1156  
  movslq %edi, %rdx          #  30    0x40514f  3      OPC=1289  
  movq %rdx, 0x2208d5(%rip)  #  31    0x405152  7      OPC=1138  
  movq 0x28(%rax), %rdx      #  32    0x405159  4      OPC=1161  
  movq %rdx, 0x2208b2(%rip)  #  33    0x40515d  7      OPC=1138  
  movq 0x30(%rax), %rdx      #  34    0x405164  4      OPC=1161  
  movq %rdx, 0x2208b7(%rip)  #  35    0x405168  7      OPC=1138  
  movl 0x2202b5(%rip), %edx  #  36    0x40516f  6      OPC=1156  
  testl %edx, %edx           #  37    0x405175  2      OPC=2436  
  jne .L_4051c0              #  38    0x405177  6      OPC=963   
  nop                        #  39    0x40517d  1      OPC=1343  
  nop                        #  40    0x40517e  1      OPC=1343  
.L_405173:                   #        0x40517f  0      OPC=0     
  movq %rbp, %rdi            #  41    0x40517f  3      OPC=1162  
  callq 0x20(%rax)           #  42    0x405182  3      OPC=257   
  movq 0x220888(%rip), %rdx  #  43    0x405185  7      OPC=1161  
  movq 0x220889(%rip), %rcx  #  44    0x40518c  7      OPC=1161  
  movq %rcx, 0x28(%rdx)      #  45    0x405193  4      OPC=1138  
  movq 0x22088e(%rip), %rcx  #  46    0x405197  7      OPC=1161  
  movq %rcx, 0x30(%rdx)      #  47    0x40519e  4      OPC=1138  
  movq %rax, 0x22086b(%rip)  #  48    0x4051a2  7      OPC=1138  
  testq %rax, %rax           #  49    0x4051a9  3      OPC=2438  
  jne .L_405100              #  50    0x4051ac  6      OPC=963   
.L_4051a6:                   #        0x4051b2  0      OPC=0     
  addq $0x8, %rsp            #  51    0x4051b2  4      OPC=70    
  popq %rbx                  #  52    0x4051b6  1      OPC=1694  
  popq %rbp                  #  53    0x4051b7  1      OPC=1694  
  retq                       #  54    0x4051b8  1      OPC=1978  
.L_4051ad:                   #        0x4051b9  0      OPC=0     
  movq (%rax), %rax          #  55    0x4051b9  3      OPC=1161  
  movq %rax, 0x220851(%rip)  #  56    0x4051bc  7      OPC=1138  
  jmpq .L_4050f7             #  57    0x4051c3  5      OPC=930   
.L_4051bc:                   #        0x4051c8  0      OPC=0     
  xorl %ebp, %ebp            #  58    0x4051c8  2      OPC=3758  
  jmpq .L_405146             #  59    0x4051ca  5      OPC=930   
  nop                        #  60    0x4051cf  1      OPC=1343  
  nop                        #  61    0x4051d0  1      OPC=1343  
.L_4051c0:                   #        0x4051d1  0      OPC=0     
  addb $0x30, %dil           #  62    0x4051d1  4      OPC=74    
  movsbl %dil, %edi          #  63    0x4051d5  4      OPC=1282  
  callq .trace               #  64    0x4051d9  5      OPC=260   
  movq 0x220834(%rip), %rax  #  65    0x4051de  7      OPC=1161  
  jmpq .L_405173             #  66    0x4051e5  5      OPC=930   
  nop                        #  67    0x4051ea  1      OPC=1343  
  nop                        #  68    0x4051eb  1      OPC=1343  
                                                                 
.size schedule, .-schedule

