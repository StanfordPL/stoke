  .text
  .globl __nacl_tls_combined_size
  .type __nacl_tls_combined_size, @function

#! file-offset 0x158c20
#! rip-offset  0x118c20
#! capacity    128 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.__nacl_tls_combined_size:     #        0x118c20  0      OPC=<label>         
  pushq %rbx                   #  1     0x118c20  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x118c21  2      OPC=movl_r32_r32    
  nop                          #  3     0x118c23  1      OPC=nop             
  nop                          #  4     0x118c24  1      OPC=nop             
  nop                          #  5     0x118c25  1      OPC=nop             
  nop                          #  6     0x118c26  1      OPC=nop             
  nop                          #  7     0x118c27  1      OPC=nop             
  nop                          #  8     0x118c28  1      OPC=nop             
  nop                          #  9     0x118c29  1      OPC=nop             
  nop                          #  10    0x118c2a  1      OPC=nop             
  nop                          #  11    0x118c2b  1      OPC=nop             
  nop                          #  12    0x118c2c  1      OPC=nop             
  nop                          #  13    0x118c2d  1      OPC=nop             
  nop                          #  14    0x118c2e  1      OPC=nop             
  nop                          #  15    0x118c2f  1      OPC=nop             
  nop                          #  16    0x118c30  1      OPC=nop             
  nop                          #  17    0x118c31  1      OPC=nop             
  nop                          #  18    0x118c32  1      OPC=nop             
  nop                          #  19    0x118c33  1      OPC=nop             
  nop                          #  20    0x118c34  1      OPC=nop             
  nop                          #  21    0x118c35  1      OPC=nop             
  nop                          #  22    0x118c36  1      OPC=nop             
  nop                          #  23    0x118c37  1      OPC=nop             
  nop                          #  24    0x118c38  1      OPC=nop             
  nop                          #  25    0x118c39  1      OPC=nop             
  nop                          #  26    0x118c3a  1      OPC=nop             
  callq .get_tls_info          #  27    0x118c3b  5      OPC=callq_label     
  movl %eax, %eax              #  28    0x118c40  2      OPC=movl_r32_r32    
  movl %eax, %eax              #  29    0x118c42  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edx  #  30    0x118c44  5      OPC=movl_r32_m32    
  movl %eax, %eax              #  31    0x118c49  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %ecx  #  32    0x118c4b  5      OPC=movl_r32_m32    
  movl %eax, %eax              #  33    0x118c50  2      OPC=movl_r32_r32    
  addl 0x4(%r15,%rax,1), %edx  #  34    0x118c52  5      OPC=addl_r32_m32    
  leal -0x1(%rcx), %esi        #  35    0x118c57  3      OPC=leal_r32_m16    
  movl %edx, %edi              #  36    0x118c5a  2      OPC=movl_r32_r32    
  leal (%rsi,%rdx,1), %edx     #  37    0x118c5c  3      OPC=leal_r32_m16    
  nop                          #  38    0x118c5f  1      OPC=nop             
  negl %edi                    #  39    0x118c60  2      OPC=negl_r32        
  testl %edi, %edi             #  40    0x118c62  2      OPC=testl_r32_r32   
  leal (%rdx,%rbx,1), %eax     #  41    0x118c64  3      OPC=leal_r32_m16    
  jle .L_118c80                #  42    0x118c67  2      OPC=jle_label       
  leal (%rdi,%rsi,1), %edx     #  43    0x118c69  3      OPC=leal_r32_m16    
  negl %ecx                    #  44    0x118c6c  2      OPC=negl_r32        
  andl %ecx, %edx              #  45    0x118c6e  2      OPC=andl_r32_r32    
  addl %edx, %eax              #  46    0x118c70  2      OPC=addl_r32_r32    
  nop                          #  47    0x118c72  1      OPC=nop             
  nop                          #  48    0x118c73  1      OPC=nop             
  nop                          #  49    0x118c74  1      OPC=nop             
  nop                          #  50    0x118c75  1      OPC=nop             
  nop                          #  51    0x118c76  1      OPC=nop             
  nop                          #  52    0x118c77  1      OPC=nop             
  nop                          #  53    0x118c78  1      OPC=nop             
  nop                          #  54    0x118c79  1      OPC=nop             
  nop                          #  55    0x118c7a  1      OPC=nop             
  nop                          #  56    0x118c7b  1      OPC=nop             
  nop                          #  57    0x118c7c  1      OPC=nop             
  nop                          #  58    0x118c7d  1      OPC=nop             
  nop                          #  59    0x118c7e  1      OPC=nop             
  nop                          #  60    0x118c7f  1      OPC=nop             
.L_118c80:                     #        0x118c80  0      OPC=<label>         
  popq %rbx                    #  61    0x118c80  1      OPC=popq_r64_1      
  popq %r11                    #  62    0x118c81  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  63    0x118c83  7      OPC=andl_r32_imm32  
  nop                          #  64    0x118c8a  1      OPC=nop             
  nop                          #  65    0x118c8b  1      OPC=nop             
  nop                          #  66    0x118c8c  1      OPC=nop             
  nop                          #  67    0x118c8d  1      OPC=nop             
  addq %r15, %r11              #  68    0x118c8e  3      OPC=addq_r64_r64    
  jmpq %r11                    #  69    0x118c91  3      OPC=jmpq_r64        
  nop                          #  70    0x118c94  1      OPC=nop             
  nop                          #  71    0x118c95  1      OPC=nop             
  nop                          #  72    0x118c96  1      OPC=nop             
  nop                          #  73    0x118c97  1      OPC=nop             
  nop                          #  74    0x118c98  1      OPC=nop             
  nop                          #  75    0x118c99  1      OPC=nop             
  nop                          #  76    0x118c9a  1      OPC=nop             
  nop                          #  77    0x118c9b  1      OPC=nop             
  nop                          #  78    0x118c9c  1      OPC=nop             
  nop                          #  79    0x118c9d  1      OPC=nop             
  nop                          #  80    0x118c9e  1      OPC=nop             
  nop                          #  81    0x118c9f  1      OPC=nop             
  nop                          #  82    0x118ca0  1      OPC=nop             
  nop                          #  83    0x118ca1  1      OPC=nop             
  nop                          #  84    0x118ca2  1      OPC=nop             
  nop                          #  85    0x118ca3  1      OPC=nop             
  nop                          #  86    0x118ca4  1      OPC=nop             
  nop                          #  87    0x118ca5  1      OPC=nop             
  nop                          #  88    0x118ca6  1      OPC=nop             
                                                                             
.size __nacl_tls_combined_size, .-__nacl_tls_combined_size

