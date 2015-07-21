  .text
  .globl key_count_cmp
  .type key_count_cmp, @function

#! file-offset 0x41c5
#! rip-offset  0x4041c5
#! capacity    34 bytes

# Text                    #  Line  RIP       Bytes  Opcode    
.key_count_cmp:           #        0x4041c5  0      OPC=0     
  movl 0x8(%rdi), %edx    #  1     0x4041c5  3      OPC=1156  
  movl 0x8(%rsi), %eax    #  2     0x4041c8  3      OPC=1156  
  cmpl %eax, %edx         #  3     0x4041cb  2      OPC=472   
  je .L_4041d2            #  4     0x4041cd  6      OPC=893   
  nop                     #  5     0x4041d3  1      OPC=1343  
  nop                     #  6     0x4041d4  1      OPC=1343  
  subl %edx, %eax         #  7     0x4041d5  2      OPC=2386  
  retq                    #  8     0x4041d7  1      OPC=1978  
.L_4041d2:                #        0x4041d8  0      OPC=0     
  movq (%rsi), %rax       #  9     0x4041d8  3      OPC=1161  
  cmpq %rax, (%rdi)       #  10    0x4041db  3      OPC=460   
  jb .L_4041e1            #  11    0x4041de  6      OPC=875   
  nop                     #  12    0x4041e4  1      OPC=1343  
  nop                     #  13    0x4041e5  1      OPC=1343  
  seta %al                #  14    0x4041e6  3      OPC=2163  
  movzbl %al, %eax        #  15    0x4041e9  3      OPC=1304  
  retq                    #  16    0x4041ec  1      OPC=1978  
.L_4041e1:                #        0x4041ed  0      OPC=0     
  movl $0xffffffff, %eax  #  17    0x4041ed  6      OPC=1155  
  retq                    #  18    0x4041f3  1      OPC=1978  
                                                              
.size key_count_cmp, .-key_count_cmp

