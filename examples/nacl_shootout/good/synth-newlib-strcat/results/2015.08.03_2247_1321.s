  .text
  .globl strcat
  .type strcat, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    104 bytes

# Text                           #  Line  RIP   Bytes  Opcode              
.strcat:                         #        0     0      OPC=<label>         
  pushq %rbx                     #  1     0     1      OPC=pushq_r64_1     
  movq %rdi, %rbx                #  2     0x1   3      OPC=movq_r64_r64    
  nop                            #  3     0x4   1      OPC=nop             
  nop                            #  4     0x5   1      OPC=nop             
  testb $0x5, %bl                #  5     0x6   3      OPC=testb_r8_imm8   
  jne .L_54                      #  6     0x9   6      OPC=jne_label_1     
  leal (%rbx), %ebx              #  7     0xf   2      OPC=leal_r32_m64    
  movq (%r15,%rbx,1), %rax       #  8     0x11  4      OPC=movq_r64_m64    
  nop                            #  9     0x15  1      OPC=nop             
  movq $0xfefefefefefefeff, %r9  #  10    0x16  10     OPC=movq_r64_imm64  
  leaq (%rax,%r9,1), %rdx        #  11    0x20  4      OPC=leaq_r64_m16    
  notq %rax                      #  12    0x24  3      OPC=notq_r64        
  nop                            #  13    0x27  1      OPC=nop             
  nop                            #  14    0x28  1      OPC=nop             
  movq $0x8080808080808080, %r8  #  15    0x29  10     OPC=movq_r64_imm64  
  andq %rdx, %rax                #  16    0x33  3      OPC=andq_r64_r64    
  testq %r8, %rax                #  17    0x36  3      OPC=testq_r64_r64   
  nop                            #  18    0x39  1      OPC=nop             
  jne .L_63                      #  19    0x3a  6      OPC=jne_label_1     
.L_30:                           #        0x40  0      OPC=<label>         
  addl $0x8, %edi                #  20    0x40  3      OPC=addl_r32_imm8   
  movq (%r15,%rdi,1), %rdx       #  21    0x43  4      OPC=movq_r64_m64    
  leaq (%rdx,%r9,1), %rcx        #  22    0x47  4      OPC=leaq_r64_m32    
  notq %rdx                      #  23    0x4b  3      OPC=notq_r64        
  andq %rcx, %rdx                #  24    0x4e  3      OPC=andq_r64_r64    
  testq %r8, %rdx                #  25    0x51  3      OPC=testq_r64_r64   
  je .L_30                       #  26    0x54  2      OPC=je_label        
  jmpq .L_54                     #  27    0x56  5      OPC=jmpq_label_1    
  nop                            #  28    0x5b  1      OPC=nop             
  nop                            #  29    0x5c  1      OPC=nop             
  nop                            #  30    0x5d  1      OPC=nop             
  nop                            #  31    0x5e  1      OPC=nop             
  nop                            #  32    0x5f  1      OPC=nop             
.L_50:                           #        0x60  0      OPC=<label>         
  nop                            #  33    0x60  1      OPC=nop             
  nop                            #  34    0x61  1      OPC=nop             
  nop                            #  35    0x62  1      OPC=nop             
  nopl %eax                      #  36    0x63  3      OPC=nopl_r32        
  nop                            #  37    0x66  1      OPC=nop             
  subw %bp, %di                  #  38    0x67  3      OPC=subw_r16_r16    
  nop                            #  39    0x6a  1      OPC=nop             
  nop                            #  40    0x6b  1      OPC=nop             
  nopl %eax                      #  41    0x6c  3      OPC=nopl_r32        
  nopl %eax                      #  42    0x6f  3      OPC=nopl_r32        
  nopl %eax                      #  43    0x72  3      OPC=nopl_r32        
  nop                            #  44    0x75  1      OPC=nop             
  nop                            #  45    0x76  1      OPC=nop             
  nop                            #  46    0x77  1      OPC=nop             
  addq $0x1, %rdi                #  47    0x78  4      OPC=addq_r64_imm8   
  nop                            #  48    0x7c  1      OPC=nop             
  nop                            #  49    0x7d  1      OPC=nop             
  nop                            #  50    0x7e  1      OPC=nop             
  nop                            #  51    0x7f  1      OPC=nop             
.L_54:                           #        0x80  0      OPC=<label>         
  leal (%rdi), %edi              #  52    0x80  2      OPC=leal_r32_m32    
  cmpb $0x0, (%r15,%rdi,1)       #  53    0x82  5      OPC=cmpb_m8_imm8    
  jne .L_50                      #  54    0x87  2      OPC=jne_label       
  nop                            #  55    0x89  1      OPC=nop             
  nop                            #  56    0x8a  1      OPC=nop             
  nop                            #  57    0x8b  1      OPC=nop             
  nop                            #  58    0x8c  1      OPC=nop             
  nop                            #  59    0x8d  1      OPC=nop             
  nop                            #  60    0x8e  1      OPC=nop             
  nop                            #  61    0x8f  1      OPC=nop             
  nop                            #  62    0x90  1      OPC=nop             
  nop                            #  63    0x91  1      OPC=nop             
  nop                            #  64    0x92  1      OPC=nop             
  nop                            #  65    0x93  1      OPC=nop             
  nop                            #  66    0x94  1      OPC=nop             
  nop                            #  67    0x95  1      OPC=nop             
  nop                            #  68    0x96  1      OPC=nop             
  nop                            #  69    0x97  1      OPC=nop             
  nop                            #  70    0x98  1      OPC=nop             
  nop                            #  71    0x99  1      OPC=nop             
  nop                            #  72    0x9a  1      OPC=nop             
  callq .strcpy                  #  73    0x9b  5      OPC=callq_label     
.L_5e:                           #        0xa0  0      OPC=<label>         
  movw %bx, %ax                  #  74    0xa0  3      OPC=movw_r16_r16    
  popq %rbx                      #  75    0xa3  1      OPC=popq_r64_1      
  popq %r11                      #  76    0xa4  2      OPC=popq_r64_1      
  andl $0xe0, %r11d              #  77    0xa6  4      OPC=andl_r32_imm8   
  addq %r15, %r11                #  78    0xaa  3      OPC=addq_r64_r64    
  jmpq %r11                      #  79    0xad  3      OPC=jmpq_r64        
  nop                            #  80    0xb0  1      OPC=nop             
  nop                            #  81    0xb1  1      OPC=nop             
  nopl %eax                      #  82    0xb2  3      OPC=nopl_r32        
  nop                            #  83    0xb5  1      OPC=nop             
  nop                            #  84    0xb6  1      OPC=nop             
  nop                            #  85    0xb7  1      OPC=nop             
  nop                            #  86    0xb8  1      OPC=nop             
  nopl %eax                      #  87    0xb9  3      OPC=nopl_r32        
  nopl %eax                      #  88    0xbc  3      OPC=nopl_r32        
  nop                            #  89    0xbf  1      OPC=nop             
.L_63:                           #        0xc0  0      OPC=<label>         
  nop                            #  90    0xc0  1      OPC=nop             
  jmpq .L_54                     #  91    0xc1  2      OPC=jmpq_label      
                                                                           
.size strcat, .-strcat
