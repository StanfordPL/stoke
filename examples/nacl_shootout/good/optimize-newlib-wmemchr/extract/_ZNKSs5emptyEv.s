  .text
  .globl _ZNKSs5emptyEv
  .type _ZNKSs5emptyEv, @function

#! file-offset 0xea800
#! rip-offset  0xaa800
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs5emptyEv:            #        0xaa800  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaa800  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaa802  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaa804  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaa808  2      OPC=popq_r64_1      
  subl $0xc, %eax           #  5     0xaa80a  3      OPC=subl_r32_imm8   
  movl %eax, %eax           #  6     0xaa80d  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax  #  7     0xaa80f  4      OPC=movl_r32_m32    
  testl %eax, %eax          #  8     0xaa813  2      OPC=testl_r32_r32   
  sete %al                  #  9     0xaa815  3      OPC=sete_r8         
  nop                       #  10    0xaa818  1      OPC=nop             
  nop                       #  11    0xaa819  1      OPC=nop             
  nop                       #  12    0xaa81a  1      OPC=nop             
  nop                       #  13    0xaa81b  1      OPC=nop             
  nop                       #  14    0xaa81c  1      OPC=nop             
  nop                       #  15    0xaa81d  1      OPC=nop             
  nop                       #  16    0xaa81e  1      OPC=nop             
  nop                       #  17    0xaa81f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  18    0xaa820  7      OPC=andl_r32_imm32  
  nop                       #  19    0xaa827  1      OPC=nop             
  nop                       #  20    0xaa828  1      OPC=nop             
  nop                       #  21    0xaa829  1      OPC=nop             
  nop                       #  22    0xaa82a  1      OPC=nop             
  addq %r15, %r11           #  23    0xaa82b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  24    0xaa82e  3      OPC=jmpq_r64        
  nop                       #  25    0xaa831  1      OPC=nop             
  nop                       #  26    0xaa832  1      OPC=nop             
  nop                       #  27    0xaa833  1      OPC=nop             
  nop                       #  28    0xaa834  1      OPC=nop             
  nop                       #  29    0xaa835  1      OPC=nop             
  nop                       #  30    0xaa836  1      OPC=nop             
  nop                       #  31    0xaa837  1      OPC=nop             
  nop                       #  32    0xaa838  1      OPC=nop             
  nop                       #  33    0xaa839  1      OPC=nop             
  nop                       #  34    0xaa83a  1      OPC=nop             
  nop                       #  35    0xaa83b  1      OPC=nop             
  nop                       #  36    0xaa83c  1      OPC=nop             
  nop                       #  37    0xaa83d  1      OPC=nop             
  nop                       #  38    0xaa83e  1      OPC=nop             
  nop                       #  39    0xaa83f  1      OPC=nop             
  nop                       #  40    0xaa840  1      OPC=nop             
  nop                       #  41    0xaa841  1      OPC=nop             
  nop                       #  42    0xaa842  1      OPC=nop             
  nop                       #  43    0xaa843  1      OPC=nop             
  nop                       #  44    0xaa844  1      OPC=nop             
  nop                       #  45    0xaa845  1      OPC=nop             
  nop                       #  46    0xaa846  1      OPC=nop             
                                                                         
.size _ZNKSs5emptyEv, .-_ZNKSs5emptyEv

