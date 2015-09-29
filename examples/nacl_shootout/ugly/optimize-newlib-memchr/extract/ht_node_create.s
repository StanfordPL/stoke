  .text
  .globl ht_node_create
  .type ht_node_create, @function

#! file-offset 0x63da0
#! rip-offset  0x23da0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.ht_node_create:            #        0x23da0  0      OPC=<label>         
  pushq %rbx                #  1     0x23da0  1      OPC=pushq_r64_1     
  movq %rdi, %rbx           #  2     0x23da1  3      OPC=movq_r64_r64    
  movl $0x10, %esi          #  3     0x23da4  5      OPC=movl_r32_imm32  
  movl $0x1, %edi           #  4     0x23da9  5      OPC=movl_r32_imm32  
  nop                       #  5     0x23dae  1      OPC=nop             
  nop                       #  6     0x23daf  1      OPC=nop             
  nop                       #  7     0x23db0  1      OPC=nop             
  nop                       #  8     0x23db1  1      OPC=nop             
  nop                       #  9     0x23db2  1      OPC=nop             
  nop                       #  10    0x23db3  1      OPC=nop             
  nop                       #  11    0x23db4  1      OPC=nop             
  nop                       #  12    0x23db5  1      OPC=nop             
  nop                       #  13    0x23db6  1      OPC=nop             
  nop                       #  14    0x23db7  1      OPC=nop             
  nop                       #  15    0x23db8  1      OPC=nop             
  nop                       #  16    0x23db9  1      OPC=nop             
  nop                       #  17    0x23dba  1      OPC=nop             
  callq .calloc             #  18    0x23dbb  5      OPC=callq_label     
  movl %eax, %eax           #  19    0x23dc0  2      OPC=movl_r32_r32    
  testq %rax, %rax          #  20    0x23dc2  3      OPC=testq_r64_r64   
  je .L_23de0               #  21    0x23dc5  2      OPC=je_label        
  movl %eax, %eax           #  22    0x23dc7  2      OPC=movl_r32_r32    
  movq %rbx, (%r15,%rax,1)  #  23    0x23dc9  4      OPC=movq_m64_r64    
  popq %rbx                 #  24    0x23dcd  1      OPC=popq_r64_1      
  popq %r11                 #  25    0x23dce  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  26    0x23dd0  7      OPC=andl_r32_imm32  
  nop                       #  27    0x23dd7  1      OPC=nop             
  nop                       #  28    0x23dd8  1      OPC=nop             
  nop                       #  29    0x23dd9  1      OPC=nop             
  nop                       #  30    0x23dda  1      OPC=nop             
  addq %r15, %r11           #  31    0x23ddb  3      OPC=addq_r64_r64    
  jmpq %r11                 #  32    0x23dde  3      OPC=jmpq_r64        
  nop                       #  33    0x23de1  1      OPC=nop             
  nop                       #  34    0x23de2  1      OPC=nop             
  nop                       #  35    0x23de3  1      OPC=nop             
  nop                       #  36    0x23de4  1      OPC=nop             
  nop                       #  37    0x23de5  1      OPC=nop             
  nop                       #  38    0x23de6  1      OPC=nop             
.L_23de0:                   #        0x23de7  0      OPC=<label>         
  movl $0x1002048a, %edi    #  39    0x23de7  5      OPC=movl_r32_imm32  
  nop                       #  40    0x23dec  1      OPC=nop             
  nop                       #  41    0x23ded  1      OPC=nop             
  nop                       #  42    0x23dee  1      OPC=nop             
  nop                       #  43    0x23def  1      OPC=nop             
  nop                       #  44    0x23df0  1      OPC=nop             
  nop                       #  45    0x23df1  1      OPC=nop             
  nop                       #  46    0x23df2  1      OPC=nop             
  nop                       #  47    0x23df3  1      OPC=nop             
  nop                       #  48    0x23df4  1      OPC=nop             
  nop                       #  49    0x23df5  1      OPC=nop             
  nop                       #  50    0x23df6  1      OPC=nop             
  nop                       #  51    0x23df7  1      OPC=nop             
  nop                       #  52    0x23df8  1      OPC=nop             
  nop                       #  53    0x23df9  1      OPC=nop             
  nop                       #  54    0x23dfa  1      OPC=nop             
  nop                       #  55    0x23dfb  1      OPC=nop             
  nop                       #  56    0x23dfc  1      OPC=nop             
  nop                       #  57    0x23dfd  1      OPC=nop             
  nop                       #  58    0x23dfe  1      OPC=nop             
  nop                       #  59    0x23dff  1      OPC=nop             
  nop                       #  60    0x23e00  1      OPC=nop             
  nop                       #  61    0x23e01  1      OPC=nop             
  callq .perror             #  62    0x23e02  5      OPC=callq_label     
  movl $0x1003a062, %ecx    #  63    0x23e07  5      OPC=movl_r32_imm32  
  movl $0x1002054c, %edx    #  64    0x23e0c  5      OPC=movl_r32_imm32  
  movl $0x56, %esi          #  65    0x23e11  5      OPC=movl_r32_imm32  
  movl $0x10020499, %edi    #  66    0x23e16  5      OPC=movl_r32_imm32  
  nop                       #  67    0x23e1b  1      OPC=nop             
  nop                       #  68    0x23e1c  1      OPC=nop             
  nop                       #  69    0x23e1d  1      OPC=nop             
  nop                       #  70    0x23e1e  1      OPC=nop             
  nop                       #  71    0x23e1f  1      OPC=nop             
  nop                       #  72    0x23e20  1      OPC=nop             
  nop                       #  73    0x23e21  1      OPC=nop             
  callq .__assert_func      #  74    0x23e22  5      OPC=callq_label     
                                                                         
.size ht_node_create, .-ht_node_create

