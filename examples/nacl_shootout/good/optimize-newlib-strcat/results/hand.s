  .text
  .globl strcat
  .type strcat, @function

#! file-offset 0x166040
#! rip-offset  0x126040
#! capacity    224 bytes

# Text                         #  Line  RIP       Bytes  Opcode               
.strcat:                       #        0x126040  0      OPC=<label>          
  pushq %rbx                   #  1     0x126040  1      OPC=pushq_r64_1      
  movl %edi, %ebx              #  2     0x126041  2      OPC=movl_r32_r32     
  movl %esi, %esi              #  3     0x126043  2      OPC=movl_r32_r32     
  testb $0x3, %bl              #  4     0x126045  3      OPC=testb_r8_imm8    
  movq %rbx, %rdi              #  5     0x126048  3      OPC=movq_r64_r64     
  jne .L_126080                #  6     0x12604b  2      OPC=jne_label        
  movl %ebx, %ebx              #  7     0x12604d  2      OPC=movl_r32_r32     
  movl (%r15,%rbx,1), %edx     #  8     0x12604f  4      OPC=movl_r32_m32     
  jmpq .L_126060               #  9     0x126053  2      OPC=jmpq_label       
  nop                          #  10    0x126055  1      OPC=nop              
  nop                          #  11    0x126056  1      OPC=nop              
  nop                          #  12    0x126057  1      OPC=nop              
  nop                          #  13    0x126058  1      OPC=nop              
  nop                          #  14    0x126059  1      OPC=nop              
  nop                          #  15    0x12605a  1      OPC=nop              
  nop                          #  16    0x12605b  1      OPC=nop              
  nop                          #  18    0x12605d  1      OPC=nop              
  nop
  nop                          #  19    0x12605e  1      OPC=nop              
  nop                          #  20    0x12605f  1      OPC=nop              
.L_126060:                     #        0x126060  0      OPC=<label>          
  leal -0x1010101(%rdx), %eax  #  47    0x126080  6      OPC=leal_r32_m16     
  notl %edx                    #  48    0x126086  2      OPC=notl_r32         
  andl %edx, %eax              #  49    0x126088  2      OPC=andl_r32_r32     
  testl $0x80808080, %eax      #  50    0x12608a  6      OPC=testl_r32_imm32  
  jne .L_126080                 #  51    0x126090  2      OPC=jne_label         
  addl $0x4, %edi              #  21    0x126060  3      OPC=addl_r32_imm8    
  movl (%r15,%rdi,1), %edx     #  23    0x126065  4      OPC=movl_r32_m32     
  jmpq .L_126060               # SIZE=2
  nop
  nop
  nop
  nop
  nop
.L_126080:                     #        0x1260c1  0      OPC=<label>          
  subl $0x1, %edi
  nop                          #  94    0x1260ca  1      OPC=nop              
  nop                          #  95    0x1260cb  1      OPC=nop              
  nop                          #  96    0x1260cc  1      OPC=nop              
  nop                          #  98    0x1260ce  1      OPC=nop              
  nop                          #  99    0x1260cf  1      OPC=nop              
  nop                          #  100   0x1260d0  1      OPC=nop              
  nop                          #  101   0x1260d1  1      OPC=nop              
  nop                          #  102   0x1260d2  1      OPC=nop              
  nop                          #  103   0x1260d3  1      OPC=nop              
  nop                          #  104   0x1260d4  1      OPC=nop              
  nop                          #  105   0x1260d5  1      OPC=nop              
  nop                          #  106   0x1260d6  1      OPC=nop              
  nop                          #  107   0x1260d7  1      OPC=nop              
  nop                          #  108   0x1260d8  1      OPC=nop              
  nop                          #  109   0x1260d9  1      OPC=nop              
  nop                          #  110   0x1260da  1      OPC=nop              
  nop                          #  111   0x1260db  1      OPC=nop              
  nop                          #  112   0x1260dc  1      OPC=nop              
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
.L_1260a0:                     #        0x1260e1  0      OPC=<label>          
  addl $0x1, %edi              #  91    0x1260c1  2      OPC=movl_r32_r32     
  cmpb $0x0, (%r15,%rdi,1)     #  92    0x1260c3  5      OPC=cmpb_m8_imm8     
  jne .L_1260a0                #  93    0x1260c8  2      OPC=je_label        
  nop                          #  117   0x1260e1  1      OPC=nop              
  nop                          #  118   0x1260e2  1      OPC=nop              
  nop                          #  119   0x1260e3  1      OPC=nop              
  nop                          #  120   0x1260e4  1      OPC=nop              
  nop                          #  121   0x1260e5  1      OPC=nop              
  nop                          #  122   0x1260e6  1      OPC=nop              
  nop                          #  124   0x1260e8  1      OPC=nop              
  nop                          #  125   0x1260e9  1      OPC=nop              
  nop                          #  126   0x1260ea  1      OPC=nop              
  nop                          #  127   0x1260eb  1      OPC=nop              
  nop                          #  128   0x1260ec  1      OPC=nop              
  nop                          #  129   0x1260ed  1      OPC=nop              
  nop                          #  130   0x1260ee  1      OPC=nop              
  nop                          #  131   0x1260ef  1      OPC=nop              
  nop                          #  132   0x1260f0  1      OPC=nop              
  nop
  nop                          #  133   0x1260f1  1      OPC=nop              
  nop
  callq .strcpy                #  144   0x1260fc  5      OPC=callq_label      
  movl %ebx, %eax              #  145   0x126101  2      OPC=movl_r32_r32     
  popq %rbx                    #  146   0x126103  1      OPC=popq_r64_1       
  nop
  nop
  popq %r11                    #  147   0x126104  2      OPC=popq_r64_1       
  andl $0xe0, %r11d            #  148   0x126106  7      OPC=andl_r32_imm8   
  addq %r15, %r11              #  153   0x126111  3      OPC=addq_r64_r64     
  jmpq %r11                    #  154   0x126114  3      OPC=jmpq_r64         
                                                                              
.size strcat, .-strcat

