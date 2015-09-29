  .text
  .globl _ZNSirsEPFRSt8ios_baseS0_E
  .type _ZNSirsEPFRSt8ios_baseS0_E, @function

#! file-offset 0xa7840
#! rip-offset  0x67840
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSirsEPFRSt8ios_baseS0_E:  #        0x67840  0      OPC=<label>         
  pushq %rbx                  #  1     0x67840  1      OPC=pushq_r64_1     
  movl %edi, %ebx             #  2     0x67841  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0x67843  2      OPC=movl_r32_r32    
  movl %ebx, %ebx             #  4     0x67845  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax    #  5     0x67847  4      OPC=movl_r32_m32    
  subl $0xc, %eax             #  6     0x6784b  3      OPC=subl_r32_imm8   
  movl %eax, %eax             #  7     0x6784e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi    #  8     0x67850  4      OPC=movl_r32_m32    
  addl %ebx, %edi             #  9     0x67854  2      OPC=addl_r32_r32    
  xchgw %ax, %ax              #  10    0x67856  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi      #  11    0x67858  6      OPC=andl_r32_imm32  
  nop                         #  12    0x6785e  1      OPC=nop             
  nop                         #  13    0x6785f  1      OPC=nop             
  nop                         #  14    0x67860  1      OPC=nop             
  addq %r15, %rsi             #  15    0x67861  3      OPC=addq_r64_r64    
  callq %rsi                  #  16    0x67864  2      OPC=callq_r64       
  movl %ebx, %eax             #  17    0x67866  2      OPC=movl_r32_r32    
  popq %rbx                   #  18    0x67868  1      OPC=popq_r64_1      
  popq %r11                   #  19    0x67869  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  20    0x6786b  7      OPC=andl_r32_imm32  
  nop                         #  21    0x67872  1      OPC=nop             
  nop                         #  22    0x67873  1      OPC=nop             
  nop                         #  23    0x67874  1      OPC=nop             
  nop                         #  24    0x67875  1      OPC=nop             
  addq %r15, %r11             #  25    0x67876  3      OPC=addq_r64_r64    
  jmpq %r11                   #  26    0x67879  3      OPC=jmpq_r64        
  nop                         #  27    0x6787c  1      OPC=nop             
  nop                         #  28    0x6787d  1      OPC=nop             
  nop                         #  29    0x6787e  1      OPC=nop             
  nop                         #  30    0x6787f  1      OPC=nop             
  nop                         #  31    0x67880  1      OPC=nop             
  nop                         #  32    0x67881  1      OPC=nop             
  nop                         #  33    0x67882  1      OPC=nop             
  nop                         #  34    0x67883  1      OPC=nop             
  nop                         #  35    0x67884  1      OPC=nop             
  nop                         #  36    0x67885  1      OPC=nop             
  nop                         #  37    0x67886  1      OPC=nop             
  nop                         #  38    0x67887  1      OPC=nop             
  nop                         #  39    0x67888  1      OPC=nop             
  nop                         #  40    0x67889  1      OPC=nop             
  nop                         #  41    0x6788a  1      OPC=nop             
  nop                         #  42    0x6788b  1      OPC=nop             
  nop                         #  43    0x6788c  1      OPC=nop             
                                                                           
.size _ZNSirsEPFRSt8ios_baseS0_E, .-_ZNSirsEPFRSt8ios_baseS0_E

