  .text
  .globl __nacl_add_tp
  .type __nacl_add_tp, @function

#! file-offset 0x1588a0
#! rip-offset  0x1188a0
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__nacl_add_tp:            #        0x1188a0  0      OPC=<label>         
  pushq %rbx               #  1     0x1188a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x1188a1  2      OPC=movl_r32_r32    
  nop                      #  3     0x1188a3  1      OPC=nop             
  nop                      #  4     0x1188a4  1      OPC=nop             
  nop                      #  5     0x1188a5  1      OPC=nop             
  nop                      #  6     0x1188a6  1      OPC=nop             
  nop                      #  7     0x1188a7  1      OPC=nop             
  nop                      #  8     0x1188a8  1      OPC=nop             
  nop                      #  9     0x1188a9  1      OPC=nop             
  nop                      #  10    0x1188aa  1      OPC=nop             
  nop                      #  11    0x1188ab  1      OPC=nop             
  nop                      #  12    0x1188ac  1      OPC=nop             
  nop                      #  13    0x1188ad  1      OPC=nop             
  nop                      #  14    0x1188ae  1      OPC=nop             
  nop                      #  15    0x1188af  1      OPC=nop             
  nop                      #  16    0x1188b0  1      OPC=nop             
  nop                      #  17    0x1188b1  1      OPC=nop             
  nop                      #  18    0x1188b2  1      OPC=nop             
  nop                      #  19    0x1188b3  1      OPC=nop             
  nop                      #  20    0x1188b4  1      OPC=nop             
  nop                      #  21    0x1188b5  1      OPC=nop             
  nop                      #  22    0x1188b6  1      OPC=nop             
  nop                      #  23    0x1188b7  1      OPC=nop             
  nop                      #  24    0x1188b8  1      OPC=nop             
  nop                      #  25    0x1188b9  1      OPC=nop             
  nop                      #  26    0x1188ba  1      OPC=nop             
  callq .nacl_tls_get      #  27    0x1188bb  5      OPC=callq_label     
  addl %ebx, %eax          #  28    0x1188c0  2      OPC=addl_r32_r32    
  popq %rbx                #  29    0x1188c2  1      OPC=popq_r64_1      
  popq %r11                #  30    0x1188c3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  31    0x1188c5  7      OPC=andl_r32_imm32  
  nop                      #  32    0x1188cc  1      OPC=nop             
  nop                      #  33    0x1188cd  1      OPC=nop             
  nop                      #  34    0x1188ce  1      OPC=nop             
  nop                      #  35    0x1188cf  1      OPC=nop             
  addq %r15, %r11          #  36    0x1188d0  3      OPC=addq_r64_r64    
  jmpq %r11                #  37    0x1188d3  3      OPC=jmpq_r64        
  nop                      #  38    0x1188d6  1      OPC=nop             
  nop                      #  39    0x1188d7  1      OPC=nop             
  nop                      #  40    0x1188d8  1      OPC=nop             
  nop                      #  41    0x1188d9  1      OPC=nop             
  nop                      #  42    0x1188da  1      OPC=nop             
  nop                      #  43    0x1188db  1      OPC=nop             
  nop                      #  44    0x1188dc  1      OPC=nop             
  nop                      #  45    0x1188dd  1      OPC=nop             
  nop                      #  46    0x1188de  1      OPC=nop             
  nop                      #  47    0x1188df  1      OPC=nop             
  nop                      #  48    0x1188e0  1      OPC=nop             
  nop                      #  49    0x1188e1  1      OPC=nop             
  nop                      #  50    0x1188e2  1      OPC=nop             
  nop                      #  51    0x1188e3  1      OPC=nop             
  nop                      #  52    0x1188e4  1      OPC=nop             
  nop                      #  53    0x1188e5  1      OPC=nop             
  nop                      #  54    0x1188e6  1      OPC=nop             
                                                                         
.size __nacl_add_tp, .-__nacl_add_tp

