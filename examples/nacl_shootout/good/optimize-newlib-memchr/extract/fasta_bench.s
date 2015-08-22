  .text
  .globl fasta_bench
  .type fasta_bench, @function

#! file-offset 0x61180
#! rip-offset  0x21180
#! capacity    192 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.fasta_bench:                #        0x21180  0      OPC=<label>         
  pushq %r13                 #  1     0x21180  2      OPC=pushq_r64_1     
  pushq %r12                 #  2     0x21182  2      OPC=pushq_r64_1     
  pushq %rbx                 #  3     0x21184  1      OPC=pushq_r64_1     
  subl $0x10, %esp           #  4     0x21185  3      OPC=subl_r32_imm8   
  addq %r15, %rsp            #  5     0x21188  3      OPC=addq_r64_r64    
  movl %edi, %ebx            #  6     0x2118b  2      OPC=movl_r32_r32    
  movl $0x2a, 0xc(%rsp)      #  7     0x2118d  8      OPC=movl_m32_imm32  
  leal (%rbx,%rbx,1), %r13d  #  8     0x21195  4      OPC=leal_r32_m16    
  movl %r13d, %edx           #  9     0x21199  3      OPC=movl_r32_r32    
  nop                        #  10    0x2119c  1      OPC=nop             
  nop                        #  11    0x2119d  1      OPC=nop             
  nop                        #  12    0x2119e  1      OPC=nop             
  nop                        #  13    0x2119f  1      OPC=nop             
  movl $0x10020200, %esi     #  14    0x211a0  5      OPC=movl_r32_imm32  
  movl $0x10020260, %edi     #  15    0x211a5  5      OPC=movl_r32_imm32  
  xchgw %ax, %ax             #  16    0x211aa  2      OPC=xchgw_ax_r16    
  nop                        #  17    0x211ac  1      OPC=nop             
  nop                        #  18    0x211ad  1      OPC=nop             
  nop                        #  19    0x211ae  1      OPC=nop             
  nop                        #  20    0x211af  1      OPC=nop             
  nop                        #  21    0x211b0  1      OPC=nop             
  nop                        #  22    0x211b1  1      OPC=nop             
  nop                        #  23    0x211b2  1      OPC=nop             
  nop                        #  24    0x211b3  1      OPC=nop             
  nop                        #  25    0x211b4  1      OPC=nop             
  nop                        #  26    0x211b5  1      OPC=nop             
  nop                        #  27    0x211b6  1      OPC=nop             
  nop                        #  28    0x211b7  1      OPC=nop             
  nop                        #  29    0x211b8  1      OPC=nop             
  nop                        #  30    0x211b9  1      OPC=nop             
  nop                        #  31    0x211ba  1      OPC=nop             
  callq .repeat              #  32    0x211bb  5      OPC=callq_label     
  leal 0xc(%rsp), %r12d      #  33    0x211c0  5      OPC=leal_r32_m16    
  leal (%r13,%rbx,1), %ecx   #  34    0x211c5  5      OPC=leal_r32_m16    
  movl %r12d, %r8d           #  35    0x211ca  3      OPC=movl_r32_r32    
  movl $0x10020217, %edx     #  36    0x211cd  5      OPC=movl_r32_imm32  
  movl $0xf, %esi            #  37    0x211d2  5      OPC=movl_r32_imm32  
  movl $0x10070500, %edi     #  38    0x211d7  5      OPC=movl_r32_imm32  
  nop                        #  39    0x211dc  1      OPC=nop             
  nop                        #  40    0x211dd  1      OPC=nop             
  nop                        #  41    0x211de  1      OPC=nop             
  nop                        #  42    0x211df  1      OPC=nop             
  nop                        #  43    0x211e0  1      OPC=nop             
  nop                        #  44    0x211e1  1      OPC=nop             
  nop                        #  45    0x211e2  1      OPC=nop             
  nop                        #  46    0x211e3  1      OPC=nop             
  nop                        #  47    0x211e4  1      OPC=nop             
  nop                        #  48    0x211e5  1      OPC=nop             
  nop                        #  49    0x211e6  1      OPC=nop             
  nop                        #  50    0x211e7  1      OPC=nop             
  nop                        #  51    0x211e8  1      OPC=nop             
  nop                        #  52    0x211e9  1      OPC=nop             
  nop                        #  53    0x211ea  1      OPC=nop             
  nop                        #  54    0x211eb  1      OPC=nop             
  nop                        #  55    0x211ec  1      OPC=nop             
  nop                        #  56    0x211ed  1      OPC=nop             
  nop                        #  57    0x211ee  1      OPC=nop             
  nop                        #  58    0x211ef  1      OPC=nop             
  nop                        #  59    0x211f0  1      OPC=nop             
  nop                        #  60    0x211f1  1      OPC=nop             
  nop                        #  61    0x211f2  1      OPC=nop             
  nop                        #  62    0x211f3  1      OPC=nop             
  nop                        #  63    0x211f4  1      OPC=nop             
  nop                        #  64    0x211f5  1      OPC=nop             
  nop                        #  65    0x211f6  1      OPC=nop             
  nop                        #  66    0x211f7  1      OPC=nop             
  nop                        #  67    0x211f8  1      OPC=nop             
  nop                        #  68    0x211f9  1      OPC=nop             
  nop                        #  69    0x211fa  1      OPC=nop             
  callq .randomize           #  70    0x211fb  5      OPC=callq_label     
  leal (%rbx,%rbx,4), %ecx   #  71    0x21200  3      OPC=leal_r32_m16    
  movl %r12d, %r8d           #  72    0x21203  3      OPC=movl_r32_r32    
  movl $0x10020238, %edx     #  73    0x21206  5      OPC=movl_r32_imm32  
  movl $0x4, %esi            #  74    0x2120b  5      OPC=movl_r32_imm32  
  movl $0x100705c0, %edi     #  75    0x21210  5      OPC=movl_r32_imm32  
  nop                        #  76    0x21215  1      OPC=nop             
  nop                        #  77    0x21216  1      OPC=nop             
  nop                        #  78    0x21217  1      OPC=nop             
  nop                        #  79    0x21218  1      OPC=nop             
  nop                        #  80    0x21219  1      OPC=nop             
  nop                        #  81    0x2121a  1      OPC=nop             
  callq .randomize           #  82    0x2121b  5      OPC=callq_label     
  xorl %eax, %eax            #  83    0x21220  2      OPC=xorl_r32_r32    
  addl $0x10, %esp           #  84    0x21222  3      OPC=addl_r32_imm8   
  addq %r15, %rsp            #  85    0x21225  3      OPC=addq_r64_r64    
  popq %rbx                  #  86    0x21228  1      OPC=popq_r64_1      
  popq %r12                  #  87    0x21229  2      OPC=popq_r64_1      
  popq %r13                  #  88    0x2122b  2      OPC=popq_r64_1      
  popq %r11                  #  89    0x2122d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  90    0x2122f  7      OPC=andl_r32_imm32  
  nop                        #  91    0x21236  1      OPC=nop             
  nop                        #  92    0x21237  1      OPC=nop             
  nop                        #  93    0x21238  1      OPC=nop             
  nop                        #  94    0x21239  1      OPC=nop             
  addq %r15, %r11            #  95    0x2123a  3      OPC=addq_r64_r64    
  jmpq %r11                  #  96    0x2123d  3      OPC=jmpq_r64        
  nop                        #  97    0x21240  1      OPC=nop             
  nop                        #  98    0x21241  1      OPC=nop             
  nop                        #  99    0x21242  1      OPC=nop             
  nop                        #  100   0x21243  1      OPC=nop             
  nop                        #  101   0x21244  1      OPC=nop             
  nop                        #  102   0x21245  1      OPC=nop             
  nop                        #  103   0x21246  1      OPC=nop             
                                                                          
.size fasta_bench, .-fasta_bench

