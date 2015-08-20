  .text
  .globl fseeko
  .type fseeko, @function

#! file-offset 0x15cbc0
#! rip-offset  0x11cbc0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fseeko:                    #        0x11cbc0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x11cbc0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x11cbc5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11cbca  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x11cbcc  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x11cbd1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x11cbd4  3      OPC=addq_r64_r64   
  movq %rsi, %r12           #  7     0x11cbd7  3      OPC=movq_r64_r64   
  movl %edx, %r13d          #  8     0x11cbda  3      OPC=movl_r32_r32   
  nop                       #  9     0x11cbdd  1      OPC=nop            
  nop                       #  10    0x11cbde  1      OPC=nop            
  nop                       #  11    0x11cbdf  1      OPC=nop            
  nop                       #  12    0x11cbe0  1      OPC=nop            
  nop                       #  13    0x11cbe1  1      OPC=nop            
  nop                       #  14    0x11cbe2  1      OPC=nop            
  nop                       #  15    0x11cbe3  1      OPC=nop            
  nop                       #  16    0x11cbe4  1      OPC=nop            
  nop                       #  17    0x11cbe5  1      OPC=nop            
  nop                       #  18    0x11cbe6  1      OPC=nop            
  nop                       #  19    0x11cbe7  1      OPC=nop            
  nop                       #  20    0x11cbe8  1      OPC=nop            
  nop                       #  21    0x11cbe9  1      OPC=nop            
  nop                       #  22    0x11cbea  1      OPC=nop            
  nop                       #  23    0x11cbeb  1      OPC=nop            
  nop                       #  24    0x11cbec  1      OPC=nop            
  nop                       #  25    0x11cbed  1      OPC=nop            
  nop                       #  26    0x11cbee  1      OPC=nop            
  nop                       #  27    0x11cbef  1      OPC=nop            
  nop                       #  28    0x11cbf0  1      OPC=nop            
  nop                       #  29    0x11cbf1  1      OPC=nop            
  nop                       #  30    0x11cbf2  1      OPC=nop            
  nop                       #  31    0x11cbf3  1      OPC=nop            
  nop                       #  32    0x11cbf4  1      OPC=nop            
  nop                       #  33    0x11cbf5  1      OPC=nop            
  nop                       #  34    0x11cbf6  1      OPC=nop            
  nop                       #  35    0x11cbf7  1      OPC=nop            
  nop                       #  36    0x11cbf8  1      OPC=nop            
  nop                       #  37    0x11cbf9  1      OPC=nop            
  nop                       #  38    0x11cbfa  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x11cbfb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x11cc00  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x11cc07  3      OPC=movl_r32_r32   
  movq %r12, %rdx           #  42    0x11cc0a  3      OPC=movq_r64_r64   
  movl %ebx, %esi           #  43    0x11cc0d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x11cc0f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x11cc14  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x11cc18  5      OPC=movq_r64_m64   
  nop                       #  47    0x11cc1d  1      OPC=nop            
  nop                       #  48    0x11cc1e  1      OPC=nop            
  nop                       #  49    0x11cc1f  1      OPC=nop            
  movl %eax, %eax           #  50    0x11cc20  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x11cc22  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x11cc26  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x11cc29  3      OPC=addq_r64_r64   
  jmpq ._fseeko_r           #  54    0x11cc2c  5      OPC=jmpq_label_1   
  nop                       #  55    0x11cc31  1      OPC=nop            
  nop                       #  56    0x11cc32  1      OPC=nop            
  nop                       #  57    0x11cc33  1      OPC=nop            
  nop                       #  58    0x11cc34  1      OPC=nop            
  nop                       #  59    0x11cc35  1      OPC=nop            
  nop                       #  60    0x11cc36  1      OPC=nop            
  nop                       #  61    0x11cc37  1      OPC=nop            
  nop                       #  62    0x11cc38  1      OPC=nop            
  nop                       #  63    0x11cc39  1      OPC=nop            
  nop                       #  64    0x11cc3a  1      OPC=nop            
  nop                       #  65    0x11cc3b  1      OPC=nop            
  nop                       #  66    0x11cc3c  1      OPC=nop            
  nop                       #  67    0x11cc3d  1      OPC=nop            
  nop                       #  68    0x11cc3e  1      OPC=nop            
  nop                       #  69    0x11cc3f  1      OPC=nop            
                                                                         
.size fseeko, .-fseeko

