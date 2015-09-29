  .text
  .globl exit
  .type exit, @function

#! file-offset 0x159f20
#! rip-offset  0x119f20
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.exit:                          #        0x119f20  0      OPC=<label>         
  pushq %rbx                    #  1     0x119f20  1      OPC=pushq_r64_1     
  xorl %esi, %esi               #  2     0x119f21  2      OPC=xorl_r32_r32    
  movl %edi, %ebx               #  3     0x119f23  2      OPC=movl_r32_r32    
  nop                           #  4     0x119f25  1      OPC=nop             
  nop                           #  5     0x119f26  1      OPC=nop             
  nop                           #  6     0x119f27  1      OPC=nop             
  nop                           #  7     0x119f28  1      OPC=nop             
  nop                           #  8     0x119f29  1      OPC=nop             
  nop                           #  9     0x119f2a  1      OPC=nop             
  nop                           #  10    0x119f2b  1      OPC=nop             
  nop                           #  11    0x119f2c  1      OPC=nop             
  nop                           #  12    0x119f2d  1      OPC=nop             
  nop                           #  13    0x119f2e  1      OPC=nop             
  nop                           #  14    0x119f2f  1      OPC=nop             
  nop                           #  15    0x119f30  1      OPC=nop             
  nop                           #  16    0x119f31  1      OPC=nop             
  nop                           #  17    0x119f32  1      OPC=nop             
  nop                           #  18    0x119f33  1      OPC=nop             
  nop                           #  19    0x119f34  1      OPC=nop             
  nop                           #  20    0x119f35  1      OPC=nop             
  nop                           #  21    0x119f36  1      OPC=nop             
  nop                           #  22    0x119f37  1      OPC=nop             
  nop                           #  23    0x119f38  1      OPC=nop             
  nop                           #  24    0x119f39  1      OPC=nop             
  nop                           #  25    0x119f3a  1      OPC=nop             
  callq .__call_exitprocs       #  26    0x119f3b  5      OPC=callq_label     
  movl 0xff26e9a(%rip), %edi    #  27    0x119f40  6      OPC=movl_r32_m32    
  movl %edi, %edi               #  28    0x119f46  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rdi,1), %eax  #  29    0x119f48  5      OPC=movl_r32_m32    
  testq %rax, %rax              #  30    0x119f4d  3      OPC=testq_r64_r64   
  je .L_119f60                  #  31    0x119f50  2      OPC=je_label        
  nop                           #  32    0x119f52  1      OPC=nop             
  nop                           #  33    0x119f53  1      OPC=nop             
  nop                           #  34    0x119f54  1      OPC=nop             
  nop                           #  35    0x119f55  1      OPC=nop             
  nop                           #  36    0x119f56  1      OPC=nop             
  nop                           #  37    0x119f57  1      OPC=nop             
  andl $0xffffffe0, %eax        #  38    0x119f58  6      OPC=andl_r32_imm32  
  nop                           #  39    0x119f5e  1      OPC=nop             
  nop                           #  40    0x119f5f  1      OPC=nop             
  nop                           #  41    0x119f60  1      OPC=nop             
  addq %r15, %rax               #  42    0x119f61  3      OPC=addq_r64_r64    
  callq %rax                    #  43    0x119f64  2      OPC=callq_r64       
.L_119f60:                      #        0x119f66  0      OPC=<label>         
  movl %ebx, %edi               #  44    0x119f66  2      OPC=movl_r32_r32    
  nop                           #  45    0x119f68  1      OPC=nop             
  nop                           #  46    0x119f69  1      OPC=nop             
  nop                           #  47    0x119f6a  1      OPC=nop             
  nop                           #  48    0x119f6b  1      OPC=nop             
  nop                           #  49    0x119f6c  1      OPC=nop             
  nop                           #  50    0x119f6d  1      OPC=nop             
  nop                           #  51    0x119f6e  1      OPC=nop             
  nop                           #  52    0x119f6f  1      OPC=nop             
  nop                           #  53    0x119f70  1      OPC=nop             
  nop                           #  54    0x119f71  1      OPC=nop             
  nop                           #  55    0x119f72  1      OPC=nop             
  nop                           #  56    0x119f73  1      OPC=nop             
  nop                           #  57    0x119f74  1      OPC=nop             
  nop                           #  58    0x119f75  1      OPC=nop             
  nop                           #  59    0x119f76  1      OPC=nop             
  nop                           #  60    0x119f77  1      OPC=nop             
  nop                           #  61    0x119f78  1      OPC=nop             
  nop                           #  62    0x119f79  1      OPC=nop             
  nop                           #  63    0x119f7a  1      OPC=nop             
  nop                           #  64    0x119f7b  1      OPC=nop             
  nop                           #  65    0x119f7c  1      OPC=nop             
  nop                           #  66    0x119f7d  1      OPC=nop             
  nop                           #  67    0x119f7e  1      OPC=nop             
  nop                           #  68    0x119f7f  1      OPC=nop             
  nop                           #  69    0x119f80  1      OPC=nop             
  callq ._exit                  #  70    0x119f81  5      OPC=callq_label     
                                                                              
.size exit, .-exit

