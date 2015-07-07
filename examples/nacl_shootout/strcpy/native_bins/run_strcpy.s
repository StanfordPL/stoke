  .text
  .globl run_strcpy
  .type run_strcpy, @function

#! file-offset 0x6f34
#! rip-offset  0x406f34
#! capacity    124 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.run_strcpy:                 #        0x406f34  0      OPC=0     
  pushq %r13                 #  1     0x406f34  2      OPC=1861  
  pushq %r12                 #  2     0x406f36  2      OPC=1861  
  pushq %rbp                 #  3     0x406f38  1      OPC=1861  
  pushq %rbx                 #  4     0x406f39  1      OPC=1861  
  subq $0x8, %rsp            #  5     0x406f3a  4      OPC=2389  
  movslq %edi, %r13          #  6     0x406f3e  3      OPC=1289  
  movl $0x400, %edi          #  7     0x406f41  5      OPC=1154  
  callq .malloc_plt          #  8     0x406f46  5      OPC=260   
  movq %rax, %rbx            #  9     0x406f4b  3      OPC=1162  
  movl $0x400, %edi          #  10    0x406f4e  5      OPC=1154  
  callq .malloc_plt          #  11    0x406f53  5      OPC=260   
  movq %rax, %r12            #  12    0x406f58  3      OPC=1162  
  xorl %edx, %edx            #  13    0x406f5b  2      OPC=3758  
.L_406f5d:                   #        0x406f5d  0      OPC=0     
  movb $0x61, (%rbx,%rdx,1)  #  14    0x406f5d  4      OPC=1140  
  addq $0x1, %rdx            #  15    0x406f61  4      OPC=70    
  cmpq $0x400, %rdx          #  16    0x406f65  7      OPC=474   
  jne .L_406f5d              #  17    0x406f6c  6      OPC=963   
  nop                        #  18    0x406f72  1      OPC=1343  
  nop                        #  19    0x406f73  1      OPC=1343  
  movb $0x0, 0x3ff(%rbx)     #  20    0x406f74  7      OPC=1140  
  testq %r13, %r13           #  21    0x406f7b  3      OPC=2438  
  je .L_406f97               #  22    0x406f7e  6      OPC=893   
  nop                        #  23    0x406f84  1      OPC=1343  
  nop                        #  24    0x406f85  1      OPC=1343  
  addq $0x1, %r13            #  25    0x406f86  4      OPC=70    
  movl $0x1, %ebp            #  26    0x406f8a  5      OPC=1154  
.L_406f83:                   #        0x406f8f  0      OPC=0     
  movq %rbx, %rsi            #  27    0x406f8f  3      OPC=1162  
  movq %r12, %rdi            #  28    0x406f92  3      OPC=1162  
  callq .my_strcpy           #  29    0x406f95  5      OPC=260   
  addq $0x1, %rbp            #  30    0x406f9a  4      OPC=70    
  cmpq %r13, %rbp            #  31    0x406f9e  3      OPC=477   
  jne .L_406f83              #  32    0x406fa1  6      OPC=963   
  nop                        #  33    0x406fa7  1      OPC=1343  
  nop                        #  34    0x406fa8  1      OPC=1343  
.L_406f97:                   #        0x406fa9  0      OPC=0     
  xorl %eax, %eax            #  35    0x406fa9  2      OPC=3758  
  addq $0x8, %rsp            #  36    0x406fab  4      OPC=70    
  popq %rbx                  #  37    0x406faf  1      OPC=1694  
  popq %rbp                  #  38    0x406fb0  1      OPC=1694  
  popq %r12                  #  39    0x406fb1  2      OPC=1694  
  popq %r13                  #  40    0x406fb3  2      OPC=1694  
  retq                       #  41    0x406fb5  1      OPC=1978  
  nop                        #  42    0x406fb6  1      OPC=1343  
  nop                        #  43    0x406fb7  1      OPC=1343  
  nop                        #  44    0x406fb8  1      OPC=1343  
  nop                        #  45    0x406fb9  1      OPC=1343  
  nop                        #  46    0x406fba  1      OPC=1343  
  nop                        #  47    0x406fbb  1      OPC=1343  
  nop                        #  48    0x406fbc  1      OPC=1343  
  nop                        #  49    0x406fbd  1      OPC=1343  
  nop                        #  50    0x406fbe  1      OPC=1343  
  nop                        #  51    0x406fbf  1      OPC=1343  
  xchgw %ax, %ax             #  52    0x406fc0  2      OPC=3700  
                                                                 
.size run_strcpy, .-run_strcpy

