  .text
  .globl IncrementalRemove
  .type IncrementalRemove, @function

#! file-offset 0x66a4
#! rip-offset  0x4066a4
#! capacity    186 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.IncrementalRemove:               #        0x4066a4  0      OPC=0     
  pushq %r12                      #  1     0x4066a4  2      OPC=1861  
  pushq %rbp                      #  2     0x4066a6  1      OPC=1861  
  pushq %rbx                      #  3     0x4066a7  1      OPC=1861  
  movq %rdi, %rbp                 #  4     0x4066a8  3      OPC=1162  
  movsbq 0x10(%rdi), %rax         #  5     0x4066ab  5      OPC=1285  
  movsbq 0x13(%rdi,%rax,1), %rax  #  6     0x4066b0  6      OPC=1285  
  movq 0x20(%rdi,%rax,8), %r12    #  7     0x4066b6  5      OPC=1161  
  movb $0xff, 0x10(%rdi)          #  8     0x4066bb  4      OPC=1140  
  movsbl 0x12(%rdi), %ebx         #  9     0x4066bf  4      OPC=1280  
  subl $0x1, %ebx                 #  10    0x4066c3  3      OPC=2384  
  js .L_4066e4                    #  11    0x4066c6  6      OPC=1043  
  nop                             #  12    0x4066cc  1      OPC=1343  
  nop                             #  13    0x4066cd  1      OPC=1343  
.L_4066c8:                        #        0x4066ce  0      OPC=0     
  movslq %ebx, %rax               #  14    0x4066ce  3      OPC=1289  
  movq 0x20(%rbp,%rax,8), %rax    #  15    0x4066d1  5      OPC=1161  
  movq 0x8(%rax), %rdi            #  16    0x4066d6  4      OPC=1161  
  movq %rbp, %rsi                 #  17    0x4066da  3      OPC=1162  
  callq .List_Remove              #  18    0x4066dd  5      OPC=260   
  subl $0x1, %ebx                 #  19    0x4066e2  3      OPC=2384  
  cmpl $0xffffffff, %ebx          #  20    0x4066e5  6      OPC=469   
  nop                             #  21    0x4066eb  1      OPC=1343  
  nop                             #  22    0x4066ec  1      OPC=1343  
  nop                             #  23    0x4066ed  1      OPC=1343  
  jne .L_4066c8                   #  24    0x4066ee  6      OPC=963   
  nop                             #  25    0x4066f4  1      OPC=1343  
  nop                             #  26    0x4066f5  1      OPC=1343  
.L_4066e4:                        #        0x4066f6  0      OPC=0     
  movl $0x8, %edi                 #  27    0x4066f6  5      OPC=1154  
  callq .List_Create              #  28    0x4066fb  5      OPC=260   
  movq %rax, 0x21f353(%rip)       #  29    0x406700  7      OPC=1138  
  movq %r12, %rdi                 #  30    0x406707  3      OPC=1162  
  callq .RemovePropagateFrom      #  31    0x40670a  5      OPC=260   
  movl $0x0, 0x21f339(%rip)       #  32    0x40670f  10     OPC=1135  
  movq 0x21f33a(%rip), %rdi       #  33    0x406719  7      OPC=1161  
.L_40670e:                        #        0x406720  0      OPC=0     
  movq (%rdi), %rax               #  34    0x406720  3      OPC=1161  
  movslq 0xc(%rdi), %rdx          #  35    0x406723  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbx        #  36    0x406727  4      OPC=1069  
  movslq 0x10(%rdi), %rdx         #  37    0x40672b  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbp        #  38    0x40672f  4      OPC=1069  
  cmpq %rbp, %rbx                 #  39    0x406733  3      OPC=477   
  ja .L_406741                    #  40    0x406736  6      OPC=863   
  nop                             #  41    0x40673c  1      OPC=1343  
  nop                             #  42    0x40673d  1      OPC=1343  
.L_406726:                        #        0x40673e  0      OPC=0     
  addq $0x8, %rbx                 #  43    0x40673e  4      OPC=70    
  movq -0x8(%rbx), %rdi           #  44    0x406742  4      OPC=1161  
  xorl %eax, %eax                 #  45    0x406746  2      OPC=3758  
  callq .AddAtStrength            #  46    0x406748  5      OPC=260   
  cmpq %rbx, %rbp                 #  47    0x40674d  3      OPC=477   
  jae .L_406726                   #  48    0x406750  6      OPC=869   
  nop                             #  49    0x406756  1      OPC=1343  
  nop                             #  50    0x406757  1      OPC=1343  
  movq 0x21f307(%rip), %rdi       #  51    0x406758  7      OPC=1161  
.L_406741:                        #        0x40675f  0      OPC=0     
  movl 0x21f2f9(%rip), %eax       #  52    0x40675f  6      OPC=1156  
  addl $0x1, %eax                 #  53    0x406765  3      OPC=65    
  movl %eax, 0x21f2f0(%rip)       #  54    0x406768  6      OPC=1136  
  cmpl $0x6, %eax                 #  55    0x40676e  3      OPC=470   
  jbe .L_40670e                   #  56    0x406771  6      OPC=881   
  nop                             #  57    0x406777  1      OPC=1343  
  nop                             #  58    0x406778  1      OPC=1343  
  popq %rbx                       #  59    0x406779  1      OPC=1694  
  popq %rbp                       #  60    0x40677a  1      OPC=1694  
  popq %r12                       #  61    0x40677b  2      OPC=1694  
  jmpq .List_Destroy              #  62    0x40677d  5      OPC=930   
                                                                      
.size IncrementalRemove, .-IncrementalRemove

