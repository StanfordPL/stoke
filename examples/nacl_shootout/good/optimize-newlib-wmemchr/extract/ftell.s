  .text
  .globl ftell
  .type ftell, @function

#! file-offset 0x15cc80
#! rip-offset  0x11cc80
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.ftell:                     #        0x11cc80  0      OPC=<label>       
  pushq %rbx                #  1     0x11cc80  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x11cc81  2      OPC=movl_r32_r32  
  nop                       #  3     0x11cc83  1      OPC=nop           
  nop                       #  4     0x11cc84  1      OPC=nop           
  nop                       #  5     0x11cc85  1      OPC=nop           
  nop                       #  6     0x11cc86  1      OPC=nop           
  nop                       #  7     0x11cc87  1      OPC=nop           
  nop                       #  8     0x11cc88  1      OPC=nop           
  nop                       #  9     0x11cc89  1      OPC=nop           
  nop                       #  10    0x11cc8a  1      OPC=nop           
  nop                       #  11    0x11cc8b  1      OPC=nop           
  nop                       #  12    0x11cc8c  1      OPC=nop           
  nop                       #  13    0x11cc8d  1      OPC=nop           
  nop                       #  14    0x11cc8e  1      OPC=nop           
  nop                       #  15    0x11cc8f  1      OPC=nop           
  nop                       #  16    0x11cc90  1      OPC=nop           
  nop                       #  17    0x11cc91  1      OPC=nop           
  nop                       #  18    0x11cc92  1      OPC=nop           
  nop                       #  19    0x11cc93  1      OPC=nop           
  nop                       #  20    0x11cc94  1      OPC=nop           
  nop                       #  21    0x11cc95  1      OPC=nop           
  nop                       #  22    0x11cc96  1      OPC=nop           
  nop                       #  23    0x11cc97  1      OPC=nop           
  nop                       #  24    0x11cc98  1      OPC=nop           
  nop                       #  25    0x11cc99  1      OPC=nop           
  nop                       #  26    0x11cc9a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x11cc9b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x11cca0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x11cca7  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x11cca9  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x11ccaa  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x11ccac  4      OPC=movl_r32_m32  
  jmpq ._ftell_r            #  33    0x11ccb0  5      OPC=jmpq_label_1  
  nop                       #  34    0x11ccb5  1      OPC=nop           
  nop                       #  35    0x11ccb6  1      OPC=nop           
  nop                       #  36    0x11ccb7  1      OPC=nop           
  nop                       #  37    0x11ccb8  1      OPC=nop           
  nop                       #  38    0x11ccb9  1      OPC=nop           
  nop                       #  39    0x11ccba  1      OPC=nop           
  nop                       #  40    0x11ccbb  1      OPC=nop           
  nop                       #  41    0x11ccbc  1      OPC=nop           
  nop                       #  42    0x11ccbd  1      OPC=nop           
  nop                       #  43    0x11ccbe  1      OPC=nop           
  nop                       #  44    0x11ccbf  1      OPC=nop           
                                                                        
.size ftell, .-ftell

