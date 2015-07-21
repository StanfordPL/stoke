  .text
  .globl fasta_bench
  .type fasta_bench, @function

#! file-offset 0x60c00
#! rip-offset  0x20c00
#! capacity    192 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.fasta_bench:                #        0x20c00  0      OPC=0     
  pushq %r13                 #  1     0x20c00  2      OPC=1861  
  pushq %r12                 #  2     0x20c02  2      OPC=1861  
  pushq %rbx                 #  3     0x20c04  1      OPC=1861  
  subl $0x10, %esp           #  4     0x20c05  3      OPC=2384  
  addq %r15, %rsp            #  5     0x20c08  3      OPC=72    
  movl %edi, %ebx            #  6     0x20c0b  2      OPC=1157  
  movl $0x2a, 0xc(%rsp)      #  7     0x20c0d  8      OPC=1135  
  leal (%rbx,%rbx,1), %r13d  #  8     0x20c15  4      OPC=1066  
  movl %r13d, %edx           #  9     0x20c19  3      OPC=1157  
  nop                        #  10    0x20c1c  1      OPC=1343  
  nop                        #  11    0x20c1d  1      OPC=1343  
  nop                        #  12    0x20c1e  1      OPC=1343  
  nop                        #  13    0x20c1f  1      OPC=1343  
  movl $0x10020200, %esi     #  14    0x20c20  5      OPC=1154  
  movl $0x10020260, %edi     #  15    0x20c25  5      OPC=1154  
  xchgw %ax, %ax             #  16    0x20c2a  2      OPC=3700  
  nop                        #  17    0x20c2c  1      OPC=1343  
  nop                        #  18    0x20c2d  1      OPC=1343  
  nop                        #  19    0x20c2e  1      OPC=1343  
  nop                        #  20    0x20c2f  1      OPC=1343  
  nop                        #  21    0x20c30  1      OPC=1343  
  nop                        #  22    0x20c31  1      OPC=1343  
  nop                        #  23    0x20c32  1      OPC=1343  
  nop                        #  24    0x20c33  1      OPC=1343  
  nop                        #  25    0x20c34  1      OPC=1343  
  nop                        #  26    0x20c35  1      OPC=1343  
  nop                        #  27    0x20c36  1      OPC=1343  
  nop                        #  28    0x20c37  1      OPC=1343  
  nop                        #  29    0x20c38  1      OPC=1343  
  nop                        #  30    0x20c39  1      OPC=1343  
  nop                        #  31    0x20c3a  1      OPC=1343  
  callq .repeat              #  32    0x20c3b  5      OPC=260   
  leal 0xc(%rsp), %r12d      #  33    0x20c40  5      OPC=1066  
  leal (%r13,%rbx,1), %ecx   #  34    0x20c45  5      OPC=1066  
  movl %r12d, %r8d           #  35    0x20c4a  3      OPC=1157  
  movl $0x10020217, %edx     #  36    0x20c4d  5      OPC=1154  
  movl $0xf, %esi            #  37    0x20c52  5      OPC=1154  
  movl $0x10070500, %edi     #  38    0x20c57  5      OPC=1154  
  nop                        #  39    0x20c5c  1      OPC=1343  
  nop                        #  40    0x20c5d  1      OPC=1343  
  nop                        #  41    0x20c5e  1      OPC=1343  
  nop                        #  42    0x20c5f  1      OPC=1343  
  nop                        #  43    0x20c60  1      OPC=1343  
  nop                        #  44    0x20c61  1      OPC=1343  
  nop                        #  45    0x20c62  1      OPC=1343  
  nop                        #  46    0x20c63  1      OPC=1343  
  nop                        #  47    0x20c64  1      OPC=1343  
  nop                        #  48    0x20c65  1      OPC=1343  
  nop                        #  49    0x20c66  1      OPC=1343  
  nop                        #  50    0x20c67  1      OPC=1343  
  nop                        #  51    0x20c68  1      OPC=1343  
  nop                        #  52    0x20c69  1      OPC=1343  
  nop                        #  53    0x20c6a  1      OPC=1343  
  nop                        #  54    0x20c6b  1      OPC=1343  
  nop                        #  55    0x20c6c  1      OPC=1343  
  nop                        #  56    0x20c6d  1      OPC=1343  
  nop                        #  57    0x20c6e  1      OPC=1343  
  nop                        #  58    0x20c6f  1      OPC=1343  
  nop                        #  59    0x20c70  1      OPC=1343  
  nop                        #  60    0x20c71  1      OPC=1343  
  nop                        #  61    0x20c72  1      OPC=1343  
  nop                        #  62    0x20c73  1      OPC=1343  
  nop                        #  63    0x20c74  1      OPC=1343  
  nop                        #  64    0x20c75  1      OPC=1343  
  nop                        #  65    0x20c76  1      OPC=1343  
  nop                        #  66    0x20c77  1      OPC=1343  
  nop                        #  67    0x20c78  1      OPC=1343  
  nop                        #  68    0x20c79  1      OPC=1343  
  nop                        #  69    0x20c7a  1      OPC=1343  
  callq .randomize           #  70    0x20c7b  5      OPC=260   
  leal (%rbx,%rbx,4), %ecx   #  71    0x20c80  3      OPC=1066  
  movl %r12d, %r8d           #  72    0x20c83  3      OPC=1157  
  movl $0x10020238, %edx     #  73    0x20c86  5      OPC=1154  
  movl $0x4, %esi            #  74    0x20c8b  5      OPC=1154  
  movl $0x100705c0, %edi     #  75    0x20c90  5      OPC=1154  
  nop                        #  76    0x20c95  1      OPC=1343  
  nop                        #  77    0x20c96  1      OPC=1343  
  nop                        #  78    0x20c97  1      OPC=1343  
  nop                        #  79    0x20c98  1      OPC=1343  
  nop                        #  80    0x20c99  1      OPC=1343  
  nop                        #  81    0x20c9a  1      OPC=1343  
  callq .randomize           #  82    0x20c9b  5      OPC=260   
  xorl %eax, %eax            #  83    0x20ca0  2      OPC=3758  
  addl $0x10, %esp           #  84    0x20ca2  3      OPC=65    
  addq %r15, %rsp            #  85    0x20ca5  3      OPC=72    
  popq %rbx                  #  86    0x20ca8  1      OPC=1694  
  popq %r12                  #  87    0x20ca9  2      OPC=1694  
  popq %r13                  #  88    0x20cab  2      OPC=1694  
  popq %r11                  #  89    0x20cad  2      OPC=1694  
  andl $0xffffffe0, %r11d    #  90    0x20caf  7      OPC=131   
  nop                        #  91    0x20cb6  1      OPC=1343  
  nop                        #  92    0x20cb7  1      OPC=1343  
  nop                        #  93    0x20cb8  1      OPC=1343  
  nop                        #  94    0x20cb9  1      OPC=1343  
  addq %r15, %r11            #  95    0x20cba  3      OPC=72    
  jmpq %r11                  #  96    0x20cbd  3      OPC=928   
  nop                        #  97    0x20cc0  1      OPC=1343  
  nop                        #  98    0x20cc1  1      OPC=1343  
  nop                        #  99    0x20cc2  1      OPC=1343  
  nop                        #  100   0x20cc3  1      OPC=1343  
  nop                        #  101   0x20cc4  1      OPC=1343  
  nop                        #  102   0x20cc5  1      OPC=1343  
  nop                        #  103   0x20cc6  1      OPC=1343  
                                                                
.size fasta_bench, .-fasta_bench

