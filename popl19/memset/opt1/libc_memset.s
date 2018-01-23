  .text
  .globl libc_memset
  .type libc_memset, @function

#! file-offset 0x60
#! rip-offset  0x20
#! capacity    233 bytes

# Text                         #  Line  RIP    Bytes  Opcode             
.libc_memset:                  #        0x20   0      OPC=<label>        
  movq %rdi, %rax              #  1     0x20   3      OPC=movq_r64_r64   
  movq %rdi, %rcx              #  2     0x23   3      OPC=movq_r64_r64   
  cmpl $0x7, %edx              #  3     0x26   3      OPC=cmpl_r32_imm8  
  jbe .L_ef                    #  4     0x29   6      OPC=jbe_label_1    
  movl %esi, %r9d              #  5     0x2f   3      OPC=movl_r32_r32   
  movzbl %sil, %edi            #  6     0x32   4      OPC=movzbl_r32_r8  
  movq %rdi, %r8               #  7     0x36   3      OPC=movq_r64_r64   
  shlq $0x8, %r8               #  8     0x39   4      OPC=shlq_r64_imm8  
  orq %rdi, %r8                #  9     0x3d   3      OPC=orq_r64_r64    
  movq %r8, %rdi               #  10    0x40   3      OPC=movq_r64_r64   
  shlq $0x10, %rdi             #  11    0x43   4      OPC=shlq_r64_imm8  
  orq %rdi, %r8                #  12    0x47   3      OPC=orq_r64_r64    
  movq %r8, %rdi               #  13    0x4a   3      OPC=movq_r64_r64   
  shlq $0x20, %rdi             #  14    0x4d   4      OPC=shlq_r64_imm8  
  orq %rdi, %r8                #  15    0x51   3      OPC=orq_r64_r64    
  testb $0x7, %al              #  16    0x54   2      OPC=testb_al_imm8  
  je .L_67                     #  17    0x56   2      OPC=je_label       
.L_58:                         #        0x58   0      OPC=<label>        
  movb %r9b, (%rcx)            #  18    0x58   3      OPC=movb_m8_r8     
  addq $0x1, %rcx              #  19    0x5b   4      OPC=addq_r64_imm8  
  subl $0x1, %edx              #  20    0x5f   3      OPC=subl_r32_imm8  
  testb $0x7, %cl              #  21    0x62   3      OPC=testb_r8_imm8  
  jne .L_58                    #  22    0x65   2      OPC=jne_label      
.L_67:                         #        0x67   0      OPC=<label>        
  movl %edx, %edi              #  23    0x67   2      OPC=movl_r32_r32   
  shrl $0x6, %edi              #  24    0x69   3      OPC=shrl_r32_imm8  
  testl %edi, %edi             #  25    0x6c   2      OPC=testl_r32_r32  
  je .L_b3                     #  26    0x6e   2      OPC=je_label       
  subl $0x1, %edi              #  27    0x70   3      OPC=subl_r32_imm8  
  leaq 0x40(%rcx), %r10        #  28    0x73   4      OPC=leaq_r64_m16   
  movl %edi, %r9d              #  29    0x77   3      OPC=movl_r32_r32   
  shlq $0x6, %r9               #  30    0x7a   4      OPC=shlq_r64_imm8  
  addq %r10, %r9               #  31    0x7e   3      OPC=addq_r64_r64   
.L_81:                         #        0x81   0      OPC=<label>        
  movq %r8, (%rcx)             #  32    0x81   3      OPC=movq_m64_r64   
  movq %r8, 0x8(%rcx)          #  33    0x84   4      OPC=movq_m64_r64   
  movq %r8, 0x10(%rcx)         #  34    0x88   4      OPC=movq_m64_r64   
  movq %r8, 0x18(%rcx)         #  35    0x8c   4      OPC=movq_m64_r64   
  movq %r8, 0x20(%rcx)         #  36    0x90   4      OPC=movq_m64_r64   
  movq %r8, 0x28(%rcx)         #  37    0x94   4      OPC=movq_m64_r64   
  movq %r8, 0x30(%rcx)         #  38    0x98   4      OPC=movq_m64_r64   
  movq %r8, 0x38(%rcx)         #  39    0x9c   4      OPC=movq_m64_r64   
  addq $0x40, %rcx             #  40    0xa0   4      OPC=addq_r64_imm8  
  cmpq %rcx, %r9               #  41    0xa4   3      OPC=cmpq_r64_r64   
  jne .L_81                    #  42    0xa7   2      OPC=jne_label      
  movl %edi, %edi              #  43    0xa9   2      OPC=movl_r32_r32   
  shlq $0x6, %rdi              #  44    0xab   4      OPC=shlq_r64_imm8  
  leaq (%r10,%rdi,1), %rcx     #  45    0xaf   4      OPC=leaq_r64_m16   
.L_b3:                         #        0xb3   0      OPC=<label>        
  movl %edx, %edi              #  46    0xb3   2      OPC=movl_r32_r32   
  andl $0x3f, %edi             #  47    0xb5   3      OPC=andl_r32_imm8  
  shrl $0x3, %edi              #  48    0xb8   3      OPC=shrl_r32_imm8  
  testl %edi, %edi             #  49    0xbb   2      OPC=testl_r32_r32  
  je .L_ec                     #  50    0xbd   2      OPC=je_label       
  subl $0x1, %edi              #  51    0xbf   3      OPC=subl_r32_imm8  
  movq %rcx, %r10              #  52    0xc2   3      OPC=movq_r64_r64   
  movl %edi, %r9d              #  53    0xc5   3      OPC=movl_r32_r32   
  leaq 0x8(,%r9,8), %r9        #  54    0xc8   8      OPC=leaq_r64_m16   
  addq %rcx, %r9               #  55    0xd0   3      OPC=addq_r64_r64   
.L_d3:                         #        0xd3   0      OPC=<label>        
  movq %r8, (%rcx)             #  56    0xd3   3      OPC=movq_m64_r64   
  addq $0x8, %rcx              #  57    0xd6   4      OPC=addq_r64_imm8  
  cmpq %rcx, %r9               #  58    0xda   3      OPC=cmpq_r64_r64   
  jne .L_d3                    #  59    0xdd   2      OPC=jne_label      
  movl %edi, %edi              #  60    0xdf   2      OPC=movl_r32_r32   
  leaq 0x8(,%rdi,8), %rcx      #  61    0xe1   8      OPC=leaq_r64_m16   
  addq %r10, %rcx              #  62    0xe9   3      OPC=addq_r64_r64   
.L_ec:                         #        0xec   0      OPC=<label>        
  andl $0x7, %edx              #  63    0xec   3      OPC=andl_r32_imm8  
.L_ef:                         #        0xef   0      OPC=<label>        
  testl %edx, %edx             #  64    0xef   2      OPC=testl_r32_r32  
  je .L_107                    #  65    0xf1   2      OPC=je_label       
  subl $0x1, %edx              #  66    0xf3   3      OPC=subl_r32_imm8  
  leaq 0x1(%rcx,%rdx,1), %rdx  #  67    0xf6   5      OPC=leaq_r64_m16   
.L_fb:                         #        0xfb   0      OPC=<label>        
  movb %sil, (%rcx)            #  68    0xfb   3      OPC=movb_m8_r8     
  addq $0x1, %rcx              #  69    0xfe   4      OPC=addq_r64_imm8  
  cmpq %rdx, %rcx              #  70    0x102  3      OPC=cmpq_r64_r64   
  jne .L_fb                    #  71    0x105  2      OPC=jne_label      
.L_107:                        #        0x107  0      OPC=<label>        
  nop                          #  72    0x107  1      OPC=nop            
  retq                         #  73    0x108  1      OPC=retq           
                                                                         
.size libc_memset, .-libc_memset

