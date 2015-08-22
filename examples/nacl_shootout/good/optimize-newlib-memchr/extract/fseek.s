  .text
  .globl fseek
  .type fseek, @function

#! file-offset 0x15c800
#! rip-offset  0x11c800
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fseek:                     #        0x11c800  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x11c800  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x11c805  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11c80a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x11c80c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x11c811  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x11c814  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x11c817  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x11c81a  3      OPC=movl_r32_r32   
  nop                       #  9     0x11c81d  1      OPC=nop            
  nop                       #  10    0x11c81e  1      OPC=nop            
  nop                       #  11    0x11c81f  1      OPC=nop            
  nop                       #  12    0x11c820  1      OPC=nop            
  nop                       #  13    0x11c821  1      OPC=nop            
  nop                       #  14    0x11c822  1      OPC=nop            
  nop                       #  15    0x11c823  1      OPC=nop            
  nop                       #  16    0x11c824  1      OPC=nop            
  nop                       #  17    0x11c825  1      OPC=nop            
  nop                       #  18    0x11c826  1      OPC=nop            
  nop                       #  19    0x11c827  1      OPC=nop            
  nop                       #  20    0x11c828  1      OPC=nop            
  nop                       #  21    0x11c829  1      OPC=nop            
  nop                       #  22    0x11c82a  1      OPC=nop            
  nop                       #  23    0x11c82b  1      OPC=nop            
  nop                       #  24    0x11c82c  1      OPC=nop            
  nop                       #  25    0x11c82d  1      OPC=nop            
  nop                       #  26    0x11c82e  1      OPC=nop            
  nop                       #  27    0x11c82f  1      OPC=nop            
  nop                       #  28    0x11c830  1      OPC=nop            
  nop                       #  29    0x11c831  1      OPC=nop            
  nop                       #  30    0x11c832  1      OPC=nop            
  nop                       #  31    0x11c833  1      OPC=nop            
  nop                       #  32    0x11c834  1      OPC=nop            
  nop                       #  33    0x11c835  1      OPC=nop            
  nop                       #  34    0x11c836  1      OPC=nop            
  nop                       #  35    0x11c837  1      OPC=nop            
  nop                       #  36    0x11c838  1      OPC=nop            
  nop                       #  37    0x11c839  1      OPC=nop            
  nop                       #  38    0x11c83a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x11c83b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x11c840  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x11c847  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x11c84a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x11c84d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x11c84f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x11c854  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x11c858  5      OPC=movq_r64_m64   
  nop                       #  47    0x11c85d  1      OPC=nop            
  nop                       #  48    0x11c85e  1      OPC=nop            
  nop                       #  49    0x11c85f  1      OPC=nop            
  movl %eax, %eax           #  50    0x11c860  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x11c862  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x11c866  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x11c869  3      OPC=addq_r64_r64   
  jmpq ._fseek_r            #  54    0x11c86c  5      OPC=jmpq_label_1   
  nop                       #  55    0x11c871  1      OPC=nop            
  nop                       #  56    0x11c872  1      OPC=nop            
  nop                       #  57    0x11c873  1      OPC=nop            
  nop                       #  58    0x11c874  1      OPC=nop            
  nop                       #  59    0x11c875  1      OPC=nop            
  nop                       #  60    0x11c876  1      OPC=nop            
  nop                       #  61    0x11c877  1      OPC=nop            
  nop                       #  62    0x11c878  1      OPC=nop            
  nop                       #  63    0x11c879  1      OPC=nop            
  nop                       #  64    0x11c87a  1      OPC=nop            
  nop                       #  65    0x11c87b  1      OPC=nop            
  nop                       #  66    0x11c87c  1      OPC=nop            
  nop                       #  67    0x11c87d  1      OPC=nop            
  nop                       #  68    0x11c87e  1      OPC=nop            
  nop                       #  69    0x11c87f  1      OPC=nop            
                                                                         
.size fseek, .-fseek

