  .text
  .globl strcat
  .type strcat, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    104 bytes

# Text                           #  Line  RIP   Bytes  Opcode              
.strcat:                         #        0     0      OPC=<label>         
  testb $0x7, %dil               #  1     0     4      OPC=testb_r8_imm8   
  pushq %rbx                     #  2     0x4   1      OPC=pushq_r64_1     
  movq %rdi, %rbx                #  3     0x5   3      OPC=movq_r64_r64    
  jne .L_54                      #  4     0x8   6      OPC=jne_label_1     
  nop                            #  5     0xe   1      OPC=nop             
  leal (%rbx), %ebx              #  6     0xf   2      OPC=leal_r32_m16    
  movq (%r15,%rbx,1), %rax       #  7     0x11  4      OPC=movq_r64_m64    
  movq $0xfefefefefefefeff, %r9  #  8     0x15  10     OPC=movq_r64_imm64  
  nop                            #  9     0x1f  1      OPC=nop             
  leaq (%rax,%r9,1), %rdx        #  10    0x20  4      OPC=leaq_r64_m64    
  nop                            #  11    0x24  1      OPC=nop             
  movq $0x8080808080808080, %r8  #  12    0x25  10     OPC=movq_r64_imm64  
  nop                            #  13    0x2f  1      OPC=nop             
  nop                            #  14    0x30  1      OPC=nop             
  notq %rax                      #  15    0x31  3      OPC=notq_r64        
  andq %rdx, %rax                #  16    0x34  3      OPC=andq_r64_r64_1  
  testq %r8, %rax                #  17    0x37  3      OPC=testq_r64_r64   
  jne .L_63                      #  18    0x3a  6      OPC=jne_label_1     
.L_30:                           #        0x40  0      OPC=<label>         
  addl $0x8, %edi                #  19    0x40  3      OPC=addl_r32_imm8   
  movq (%r15,%rdi,1), %rdx       #  20    0x43  4      OPC=movq_r64_m64    
  leaq (%rdx,%r9,1), %rcx        #  21    0x47  4      OPC=leaq_r64_m64    
  notq %rdx                      #  22    0x4b  3      OPC=notq_r64        
  andq %rcx, %rdx                #  23    0x4e  3      OPC=andq_r64_r64_1  
  testq %r8, %rdx                #  24    0x51  3      OPC=testq_r64_r64   
  je .L_30                       #  25    0x54  2      OPC=je_label        
  jmpq .L_54                     #  26    0x56  5      OPC=jmpq_label_1    
  nop                            #  27    0x5b  1      OPC=nop             
  nop                            #  28    0x5c  1      OPC=nop             
  nop                            #  29    0x5d  1      OPC=nop             
  nop                            #  30    0x5e  1      OPC=nop             
  nop                            #  31    0x5f  1      OPC=nop             
.L_50:                           #        0x60  0      OPC=<label>         
  nop                            #  32    0x60  1      OPC=nop             
  nop                            #  33    0x61  1      OPC=nop             
  nop                            #  34    0x62  1      OPC=nop             
  nop                            #  35    0x63  1      OPC=nop             
  nop                            #  36    0x64  1      OPC=nop             
  nop                            #  37    0x65  1      OPC=nop             
  nop                            #  38    0x66  1      OPC=nop             
  nop                            #  39    0x67  1      OPC=nop             
  nop                            #  40    0x68  1      OPC=nop             
  nop                            #  41    0x69  1      OPC=nop             
  nop                            #  42    0x6a  1      OPC=nop             
  nopl %eax                      #  43    0x6b  3      OPC=nopl_r32        
  addq $0x1, %rdi                #  44    0x6e  4      OPC=addq_r64_imm8   
  nop                            #  45    0x72  1      OPC=nop             
  nop                            #  46    0x73  1      OPC=nop             
  nop                            #  47    0x74  1      OPC=nop             
  nop                            #  48    0x75  1      OPC=nop             
  nop                            #  49    0x76  1      OPC=nop             
  nop                            #  50    0x77  1      OPC=nop             
  nop                            #  51    0x78  1      OPC=nop             
  nop                            #  52    0x79  1      OPC=nop             
  nop                            #  53    0x7a  1      OPC=nop             
  nop                            #  54    0x7b  1      OPC=nop             
  nop                            #  55    0x7c  1      OPC=nop             
  nop                            #  56    0x7d  1      OPC=nop             
  nop                            #  57    0x7e  1      OPC=nop             
  nop                            #  58    0x7f  1      OPC=nop             
.L_54:                           #        0x80  0      OPC=<label>         
  nop                            #  59    0x80  1      OPC=nop             
  nop                            #  60    0x81  1      OPC=nop             
  nop                            #  61    0x82  1      OPC=nop             
  nop                            #  62    0x83  1      OPC=nop             
  nop                            #  63    0x84  1      OPC=nop             
  nop                            #  64    0x85  1      OPC=nop             
  nop                            #  65    0x86  1      OPC=nop             
  nop                            #  66    0x87  1      OPC=nop             
  nop                            #  67    0x88  1      OPC=nop             
  nop                            #  68    0x89  1      OPC=nop             
  nop                            #  69    0x8a  1      OPC=nop             
  leal (%rdi), %edi              #  70    0x8b  2      OPC=leal_r32_m16    
  cmpb $0x0, (%r15,%rdi,1)       #  71    0x8d  5      OPC=cmpb_m8_imm8    
  nop                            #  72    0x92  1      OPC=nop             
  nop                            #  73    0x93  1      OPC=nop             
  nop                            #  74    0x94  1      OPC=nop             
  nop                            #  75    0x95  1      OPC=nop             
  nop                            #  76    0x96  1      OPC=nop             
  nop                            #  77    0x97  1      OPC=nop             
  nop                            #  78    0x98  1      OPC=nop             
  jne .L_50                      #  79    0x99  2      OPC=jne_label       
  callq .strcpy                  #  80    0x9b  5      OPC=callq_label     
  nop                            #  81    0xa0  1      OPC=nop             
  movq %rbx, %rax                #  82    0xa1  3      OPC=movq_r64_r64_1  
  nopl %eax                      #  83    0xa4  3      OPC=nopl_r32        
  nop                            #  84    0xa7  1      OPC=nop             
  nop                            #  85    0xa8  1      OPC=nop             
  popq %rbx                      #  86    0xa9  1      OPC=popq_r64_1      
.L_5e:                           #        0xaa  0      OPC=<label>         
  nop                            #  87    0xaa  1      OPC=nop             
  nop                            #  88    0xab  1      OPC=nop             
  nop                            #  89    0xac  1      OPC=nop             
  nopl %eax                      #  90    0xad  3      OPC=nopl_r32        
  nopl %eax                      #  91    0xb0  3      OPC=nopl_r32        
  nop                            #  92    0xb3  1      OPC=nop             
  popq %r11                      #  93    0xb4  2      OPC=popq_r64_1      
  andl $0xe0, %r11d              #  94    0xb6  4      OPC=andl_r32_imm8   
  addq %r15, %r11                #  95    0xba  3      OPC=addq_r64_r64    
  jmpq %r11                      #  96    0xbd  3      OPC=jmpq_r64        
.L_63:                           #        0xc0  0      OPC=<label>         
  jmpq .L_54                     #  97    0xc0  2      OPC=jmpq_label      
                                                                           
.size strcat, .-strcat
