  .text
  .globl __nacl_tls_combined_size
  .type __nacl_tls_combined_size, @function

#! file-offset 0x158f20
#! rip-offset  0x118f20
#! capacity    128 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.__nacl_tls_combined_size:     #        0x118f20  0      OPC=<label>         
  pushq %rbx                   #  1     0x118f20  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x118f21  2      OPC=movl_r32_r32    
  nop                          #  3     0x118f23  1      OPC=nop             
  nop                          #  4     0x118f24  1      OPC=nop             
  nop                          #  5     0x118f25  1      OPC=nop             
  nop                          #  6     0x118f26  1      OPC=nop             
  nop                          #  7     0x118f27  1      OPC=nop             
  nop                          #  8     0x118f28  1      OPC=nop             
  nop                          #  9     0x118f29  1      OPC=nop             
  nop                          #  10    0x118f2a  1      OPC=nop             
  nop                          #  11    0x118f2b  1      OPC=nop             
  nop                          #  12    0x118f2c  1      OPC=nop             
  nop                          #  13    0x118f2d  1      OPC=nop             
  nop                          #  14    0x118f2e  1      OPC=nop             
  nop                          #  15    0x118f2f  1      OPC=nop             
  nop                          #  16    0x118f30  1      OPC=nop             
  nop                          #  17    0x118f31  1      OPC=nop             
  nop                          #  18    0x118f32  1      OPC=nop             
  nop                          #  19    0x118f33  1      OPC=nop             
  nop                          #  20    0x118f34  1      OPC=nop             
  nop                          #  21    0x118f35  1      OPC=nop             
  nop                          #  22    0x118f36  1      OPC=nop             
  nop                          #  23    0x118f37  1      OPC=nop             
  nop                          #  24    0x118f38  1      OPC=nop             
  nop                          #  25    0x118f39  1      OPC=nop             
  nop                          #  26    0x118f3a  1      OPC=nop             
  callq .get_tls_info          #  27    0x118f3b  5      OPC=callq_label     
  movl %eax, %eax              #  28    0x118f40  2      OPC=movl_r32_r32    
  movl %eax, %eax              #  29    0x118f42  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edx  #  30    0x118f44  5      OPC=movl_r32_m32    
  movl %eax, %eax              #  31    0x118f49  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %ecx  #  32    0x118f4b  5      OPC=movl_r32_m32    
  movl %eax, %eax              #  33    0x118f50  2      OPC=movl_r32_r32    
  addl 0x4(%r15,%rax,1), %edx  #  34    0x118f52  5      OPC=addl_r32_m32    
  leal -0x1(%rcx), %esi        #  35    0x118f57  3      OPC=leal_r32_m16    
  movl %edx, %edi              #  36    0x118f5a  2      OPC=movl_r32_r32    
  leal (%rsi,%rdx,1), %edx     #  37    0x118f5c  3      OPC=leal_r32_m16    
  nop                          #  38    0x118f5f  1      OPC=nop             
  negl %edi                    #  39    0x118f60  2      OPC=negl_r32        
  testl %edi, %edi             #  40    0x118f62  2      OPC=testl_r32_r32   
  leal (%rdx,%rbx,1), %eax     #  41    0x118f64  3      OPC=leal_r32_m16    
  jle .L_118f80                #  42    0x118f67  2      OPC=jle_label       
  leal (%rdi,%rsi,1), %edx     #  43    0x118f69  3      OPC=leal_r32_m16    
  negl %ecx                    #  44    0x118f6c  2      OPC=negl_r32        
  andl %ecx, %edx              #  45    0x118f6e  2      OPC=andl_r32_r32    
  addl %edx, %eax              #  46    0x118f70  2      OPC=addl_r32_r32    
  nop                          #  47    0x118f72  1      OPC=nop             
  nop                          #  48    0x118f73  1      OPC=nop             
  nop                          #  49    0x118f74  1      OPC=nop             
  nop                          #  50    0x118f75  1      OPC=nop             
  nop                          #  51    0x118f76  1      OPC=nop             
  nop                          #  52    0x118f77  1      OPC=nop             
  nop                          #  53    0x118f78  1      OPC=nop             
  nop                          #  54    0x118f79  1      OPC=nop             
  nop                          #  55    0x118f7a  1      OPC=nop             
  nop                          #  56    0x118f7b  1      OPC=nop             
  nop                          #  57    0x118f7c  1      OPC=nop             
  nop                          #  58    0x118f7d  1      OPC=nop             
  nop                          #  59    0x118f7e  1      OPC=nop             
  nop                          #  60    0x118f7f  1      OPC=nop             
.L_118f80:                     #        0x118f80  0      OPC=<label>         
  popq %rbx                    #  61    0x118f80  1      OPC=popq_r64_1      
  popq %r11                    #  62    0x118f81  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  63    0x118f83  7      OPC=andl_r32_imm32  
  nop                          #  64    0x118f8a  1      OPC=nop             
  nop                          #  65    0x118f8b  1      OPC=nop             
  nop                          #  66    0x118f8c  1      OPC=nop             
  nop                          #  67    0x118f8d  1      OPC=nop             
  addq %r15, %r11              #  68    0x118f8e  3      OPC=addq_r64_r64    
  jmpq %r11                    #  69    0x118f91  3      OPC=jmpq_r64        
  nop                          #  70    0x118f94  1      OPC=nop             
  nop                          #  71    0x118f95  1      OPC=nop             
  nop                          #  72    0x118f96  1      OPC=nop             
  nop                          #  73    0x118f97  1      OPC=nop             
  nop                          #  74    0x118f98  1      OPC=nop             
  nop                          #  75    0x118f99  1      OPC=nop             
  nop                          #  76    0x118f9a  1      OPC=nop             
  nop                          #  77    0x118f9b  1      OPC=nop             
  nop                          #  78    0x118f9c  1      OPC=nop             
  nop                          #  79    0x118f9d  1      OPC=nop             
  nop                          #  80    0x118f9e  1      OPC=nop             
  nop                          #  81    0x118f9f  1      OPC=nop             
  nop                          #  82    0x118fa0  1      OPC=nop             
  nop                          #  83    0x118fa1  1      OPC=nop             
  nop                          #  84    0x118fa2  1      OPC=nop             
  nop                          #  85    0x118fa3  1      OPC=nop             
  nop                          #  86    0x118fa4  1      OPC=nop             
  nop                          #  87    0x118fa5  1      OPC=nop             
  nop                          #  88    0x118fa6  1      OPC=nop             
                                                                             
.size __nacl_tls_combined_size, .-__nacl_tls_combined_size

