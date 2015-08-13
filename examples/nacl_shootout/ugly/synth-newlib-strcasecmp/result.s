  .text
  .globl strcasecmp
  .type strcasecmp, @function

#! file-offset 0x131800
#! rip-offset  0x131800
#! capacity    98 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
# Text                          #  Line  RIP   Bytes  Opcode                   
.strcasecmp:                    #        0     0      OPC=<label>              
  movl 0x2cf0b1(%rip), %r8d     #  1     0     7      OPC=movl_r32_m32         
  jmpq .L_18                    #  2     0x7   5      OPC=jmpq_label_1           
  nop                           #  6     0xc   1      OPC=nop                  
  nop                           #  7     0xd   1      OPC=nop                  
  nop                           #  8     0xe   1      OPC=nop                  
  nop                           #  9     0xf   1      OPC=nop                  
  nop                           #  10    0x10  1      OPC=nop                  
  nop                           #  11    0x11  1      OPC=nop                  
  nop                           #  12    0x12  1      OPC=nop                  
  nop                           #  13    0x13  1      OPC=nop                  
  nop                           #  14    0x14  1      OPC=nop                  
  nop                           #  15    0x15  1      OPC=nop                  
  nop                           #  16    0x16  1      OPC=nop                  
  nop                           #  17    0x17  1      OPC=nop                  
  nop                           #  18    0x18  1      OPC=nop                  
  nop                           #  19    0x19  1      OPC=nop                  
  nop                           #  20    0x1a  1      OPC=nop                  
  nop                           #  21    0x1b  1      OPC=nop                  
  nop                           #  22    0x1c  1      OPC=nop                  
  nop                           #  23    0x1d  1      OPC=nop                  
  nop                           #  24    0x1e  1      OPC=nop                  
  nop                           #  25    0x1f  1      OPC=nop                  
.L_10:                          #        0x20  0      OPC=<label>              
  subl %edx, %eax               #  41    0x32  2      OPC=subl_r32_r32_1       
  jne .L_60                     #  42    0x34  6      OPC=jne_label_1            
  nop                           #  47    0x3a  1      OPC=nop                  
  testl %edx, %edx              #  48    0x3b  2      OPC=testl_r32_r32        
  nop                           #  49    0x3d  1      OPC=nop                  
  je .L_60                      #  50    0x3e  6      OPC=je_label_1             
  nop                           #  26    0x20  1      OPC=nop                  
  nop
  nop
  nop                           #  28    0x23  1      OPC=nop                  
  nopl %eax                     #  29    0x24  3      OPC=nopl_r32             
  nop                           #  30    0x27  1      OPC=nop                  
  nop                           #  31    0x28  1      OPC=nop                  
  nop                           #  36    0x2d  1      OPC=nop                  
  nop                           #  37    0x2e  1      OPC=nop                  
  nop                           #  38    0x2f  1      OPC=nop                  
  nop                           #  39    0x30  1      OPC=nop                  
  nop                           #  40    0x31  1      OPC=nop                  
.L_18:                          #        0x40  0      OPC=<label>              
  addl $0x1, %edi               #  51    0x40  3
  movzbq -0x1(%r15,%rdi,1), %rdx     #  53    0x48  5      OPC=movzbq_r64_m8        
  leaq 0x20(%rdx), %rcx         #  55    0x50  4      OPC=leaq_r64_m64         
  leal 0x1(%r8,%rdx,1), %r9d    #  57    0x55  5      OPC=leal_r32_m16         
  movsbq 0x1(%r15,%r9,1), %rdx  #  58    0x5a  6      OPC=movsbq_r64_m8        
  andb $0x7, %dl                #  62    0x63  3      OPC=andb_r8_imm8         
  cmpb $0x1, %dl                #  63    0x66  3      OPC=cmpb_r8_imm8         
  cmovel %ecx, %eax             #  64    0x69  3      OPC=cmovel_r32_r32       
  nop
  addl $0x1, %esi               #  65    0x6c  3
  movzbw -0x1(%r15,%rsi,1), %cx      #  67    0x74  6      OPC=movzbw_r16_m8        
  movq %rcx, %rdx               #  68    0x7a  3      OPC=movq_r64_r64_1       
  leal 0x1(%r8,%rcx,1), %r9d    #  72    0x80  5      OPC=leal_r32_m16         
  movsbl (%r15,%r9,1), %ecx     #  73    0x85  5      OPC=movsbl_r32_m8        
  andl $0x1, %ecx               #  74    0x8a  3      OPC=andl_r32_imm8        
  cmpb $0x1, %cl                #  75    0x8d  3      OPC=cmpb_r8_imm8         
  nop
  nop
  nop
  nop
  jne .L_10                     #  76    0x90  6      OPC=jne_label_1
  addw $0x20, %dx               #  78    0x93  4      OPC=addw_r16_imm8        
  subl %edx, %eax               #  82    0x9a  2      OPC=subl_r32_r32         
  nop                           #  83    0x9c  1      OPC=nop                  
  nop                           #  84    0x9d  1      OPC=nop                  
  je .L_18                      #  85    0x9e  2      OPC=je_label             
  popq %r11                     #  86    0xa0  2      OPC=popq_r64_1           
  andl $0xe0, %r11d             #  87    0xa2  4      OPC=andl_r32_imm8        
  addq %r15, %r11               #  88    0xa6  3      OPC=addq_r64_r64         
  jmpq %r11                     #  89    0xa9  3      OPC=jmpq_r64             
  nop                           #  90    0xac  1      OPC=nop                  
  nop                           #  91    0xad  1      OPC=nop                  
  nop                           #  92    0xae  1      OPC=nop                  
  nop                           #  93    0xaf  1      OPC=nop                  
  nop                           #  94    0xb0  1      OPC=nop                  
  nop                           #  95    0xb1  1      OPC=nop                  
  nop                           #  96    0xb2  1      OPC=nop                  
  nop                           #  97    0xb3  1      OPC=nop                  
  nop                           #  98    0xb4  1      OPC=nop                  
  nop                           #  99    0xb5  1      OPC=nop                  
  nop                           #  100   0xb6  1      OPC=nop                  
  nop                           #  101   0xb7  1      OPC=nop                  
  nop                           #  102   0xb8  1      OPC=nop                  
  nop                           #  103   0xb9  1      OPC=nop                  
  nop                           #  104   0xba  1      OPC=nop                  
  nop                           #  105   0xbb  1      OPC=nop                  
  nop                           #  106   0xbc  1      OPC=nop                  
  nop                           #  107   0xbd  1      OPC=nop                  
  nop                           #  108   0xbe  1      OPC=nop                  
  nop                           #  109   0xbf  1      OPC=nop                  
.L_60:                          #        0xc0  0      OPC=<label>              
  popq %r11                     #  110   0xc0  2      OPC=popq_r64_1           
  andl $0xe0, %r11d             #  111   0xc2  4      OPC=andl_r32_imm8        
  addq %r15, %r11               #  112   0xc6  3      OPC=addq_r64_r64         
  jmpq %r11                     #  113   0xc9  3      OPC=jmpq_r64    
