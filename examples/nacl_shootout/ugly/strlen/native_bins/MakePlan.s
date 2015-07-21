  .text
  .globl MakePlan
  .type MakePlan, @function

#! file-offset 0x6227
#! rip-offset  0x406227
#! capacity    187 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.MakePlan:                         #        0x406227  0      OPC=0     
  pushq %r12                       #  1     0x406227  2      OPC=1861  
  pushq %rbp                       #  2     0x406229  1      OPC=1861  
  pushq %rbx                       #  3     0x40622a  1      OPC=1861  
  addq $0x1, 0x21f215(%rip)        #  4     0x40622b  8      OPC=54    
  movl $0x80, %edi                 #  5     0x406233  5      OPC=1154  
  callq .List_Create               #  6     0x406238  5      OPC=260   
  movq %rax, %r12                  #  7     0x40623d  3      OPC=1162  
  movq 0x21f1f9(%rip), %rax        #  8     0x406240  7      OPC=1161  
  movslq 0xc(%rax), %rdx           #  9     0x406247  4      OPC=1288  
  cmpl %edx, 0x10(%rax)            #  10    0x40624b  3      OPC=457   
  jl .L_4062ad                     #  11    0x40624e  6      OPC=913   
  nop                              #  12    0x406254  1      OPC=1343  
  nop                              #  13    0x406255  1      OPC=1343  
  movq (%rax), %rcx                #  14    0x406256  3      OPC=1161  
  leal 0x1(%rdx), %esi             #  15    0x406259  3      OPC=1066  
  movl %esi, 0xc(%rax)             #  16    0x40625c  3      OPC=1136  
  movq (%rcx,%rdx,8), %rbx         #  17    0x40625f  4      OPC=1161  
.L_40625d:                         #        0x406263  0      OPC=0     
  testq %rbx, %rbx                 #  18    0x406263  3      OPC=2438  
  je .L_4062ad                     #  19    0x406266  6      OPC=893   
  nop                              #  20    0x40626c  1      OPC=1343  
  nop                              #  21    0x40626d  1      OPC=1343  
.L_406262:                         #        0x40626e  0      OPC=0     
  movsbq 0x10(%rbx), %rax          #  22    0x40626e  5      OPC=1285  
  movsbq 0x13(%rbx,%rax,1), %rdx   #  23    0x406273  6      OPC=1285  
  movq 0x20(%rbx,%rdx,8), %rbp     #  24    0x406279  5      OPC=1161  
  movq 0x21f1cf(%rip), %rax        #  25    0x40627e  7      OPC=1161  
  cmpq %rax, 0x18(%rbp)            #  26    0x406285  4      OPC=460   
  je .L_40628b                     #  27    0x406289  6      OPC=893   
  nop                              #  28    0x40628f  1      OPC=1343  
  nop                              #  29    0x406290  1      OPC=1343  
  movq %rbx, %rdi                  #  30    0x406291  3      OPC=1162  
  callq .InputsKnown               #  31    0x406294  5      OPC=260   
  testl %eax, %eax                 #  32    0x406299  2      OPC=2436  
  jne .L_4062b5                    #  33    0x40629b  6      OPC=963   
  nop                              #  34    0x4062a1  1      OPC=1343  
  nop                              #  35    0x4062a2  1      OPC=1343  
.L_40628b:                         #        0x4062a3  0      OPC=0     
  movq 0x21f1ae(%rip), %rdx        #  36    0x4062a3  7      OPC=1161  
  movslq 0xc(%rdx), %rcx           #  37    0x4062aa  4      OPC=1288  
  cmpl %ecx, 0x10(%rdx)            #  38    0x4062ae  3      OPC=457   
  jl .L_4062ad                     #  39    0x4062b1  6      OPC=913   
  nop                              #  40    0x4062b7  1      OPC=1343  
  nop                              #  41    0x4062b8  1      OPC=1343  
  movq (%rdx), %rax                #  42    0x4062b9  3      OPC=1161  
  leal 0x1(%rcx), %esi             #  43    0x4062bc  3      OPC=1066  
  movl %esi, 0xc(%rdx)             #  44    0x4062bf  3      OPC=1136  
  movq (%rax,%rcx,8), %rbx         #  45    0x4062c2  4      OPC=1161  
  testq %rbx, %rbx                 #  46    0x4062c6  3      OPC=2438  
  jne .L_406262                    #  47    0x4062c9  6      OPC=963   
  nop                              #  48    0x4062cf  1      OPC=1343  
  nop                              #  49    0x4062d0  1      OPC=1343  
.L_4062ad:                         #        0x4062d1  0      OPC=0     
  movq %r12, %rax                  #  50    0x4062d1  3      OPC=1162  
  popq %rbx                        #  51    0x4062d4  1      OPC=1694  
  popq %rbp                        #  52    0x4062d5  1      OPC=1694  
  popq %r12                        #  53    0x4062d6  2      OPC=1694  
  retq                             #  54    0x4062d8  1      OPC=1978  
.L_4062b5:                         #        0x4062d9  0      OPC=0     
  movq %rbx, %rsi                  #  55    0x4062d9  3      OPC=1162  
  movq %r12, %rdi                  #  56    0x4062dc  3      OPC=1162  
  callq .List_Add                  #  57    0x4062df  5      OPC=260   
  movq 0x21f181(%rip), %rax        #  58    0x4062e4  7      OPC=1161  
  movq %rax, 0x18(%rbp)            #  59    0x4062eb  4      OPC=1138  
  movq %rbp, %rsi                  #  60    0x4062ef  3      OPC=1162  
  movq 0x21f16b(%rip), %rdi        #  61    0x4062f2  7      OPC=1161  
  callq .NextDownstreamConstraint  #  62    0x4062f9  5      OPC=260   
  movq %rax, %rbx                  #  63    0x4062fe  3      OPC=1162  
  jmpq .L_40625d                   #  64    0x406301  5      OPC=930   
                                                                       
.size MakePlan, .-MakePlan

