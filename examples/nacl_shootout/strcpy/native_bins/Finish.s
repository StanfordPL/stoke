  .text
  .globl Finish
  .type Finish, @function

#! file-offset 0x69bb
#! rip-offset  0x4069bb
#! capacity    48 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.Finish:                          #        0x4069bb  0      OPC=0     
  pushq %rbx                      #  1     0x4069bb  1      OPC=1861  
  movq %rdi, %rbx                 #  2     0x4069bc  3      OPC=1162  
  callq .clock_plt                #  3     0x4069bf  5      OPC=260   
  movq %rax, %rcx                 #  4     0x4069c4  3      OPC=1162  
  movq $0x20c49ba5e353f7cf, %rdx  #  5     0x4069c7  10     OPC=1160  
  imulq %rdx                      #  6     0x4069d1  3      OPC=824   
  sarq $0x7, %rdx                 #  7     0x4069d4  4      OPC=2099  
  sarq $0x3f, %rcx                #  8     0x4069d8  4      OPC=2099  
  subq %rcx, %rdx                 #  9     0x4069dc  3      OPC=2391  
  subq 0x21f052(%rip), %rdx       #  10    0x4069df  7      OPC=2390  
  movq %rdx, (%rbx)               #  11    0x4069e6  3      OPC=1138  
  popq %rbx                       #  12    0x4069e9  1      OPC=1694  
  retq                            #  13    0x4069ea  1      OPC=1978  
                                                                      
.size Finish, .-Finish

