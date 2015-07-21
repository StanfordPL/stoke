  .text
  .globl init_lookup
  .type init_lookup, @function

#! file-offset 0x1ef0
#! rip-offset  0x401ef0
#! capacity    217 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.init_lookup:                     #        0x401ef0  0      OPC=0     
  pushq %r15                      #  1     0x401ef0  2      OPC=1861  
  pushq %r14                      #  2     0x401ef2  2      OPC=1861  
  pushq %r13                      #  3     0x401ef4  2      OPC=1861  
  pushq %r12                      #  4     0x401ef6  2      OPC=1861  
  pushq %rbp                      #  5     0x401ef8  1      OPC=1861  
  pushq %rbx                      #  6     0x401ef9  1      OPC=1861  
  subq $0x8, %rsp                 #  7     0x401efa  4      OPC=2389  
  movq %rdi, %r14                 #  8     0x401efe  3      OPC=1162  
  movq %rsi, %r15                 #  9     0x401f01  3      OPC=1162  
  movq %rdx, %r13                 #  10    0x401f04  3      OPC=1162  
  xorl %eax, %eax                 #  11    0x401f07  2      OPC=3758  
.L_401f09:                        #        0x401f09  0      OPC=0     
  movb %al, (%r13,%rax,1)         #  12    0x401f09  5      OPC=1141  
  addq $0x1, %rax                 #  13    0x401f0e  4      OPC=70    
  cmpq $0x100, %rax               #  14    0x401f12  6      OPC=485   
  jne .L_401f09                   #  15    0x401f18  6      OPC=963   
  nop                             #  16    0x401f1e  1      OPC=1343  
  nop                             #  17    0x401f1f  1      OPC=1343  
  movzbl (%r14), %ebx             #  18    0x401f20  4      OPC=1302  
  testb %bl, %bl                  #  19    0x401f24  2      OPC=2440  
  je .L_401f74                    #  20    0x401f26  6      OPC=893   
  nop                             #  21    0x401f2c  1      OPC=1343  
  nop                             #  22    0x401f2d  1      OPC=1343  
  movzbl (%r15), %ebp             #  23    0x401f2e  4      OPC=1302  
  testb %bpl, %bpl                #  24    0x401f32  3      OPC=2440  
  je .L_401f74                    #  25    0x401f35  6      OPC=893   
  nop                             #  26    0x401f3b  1      OPC=1343  
  nop                             #  27    0x401f3c  1      OPC=1343  
  callq .__ctype_tolower_loc_plt  #  28    0x401f3d  5      OPC=260   
  movq %rax, %r12                 #  29    0x401f42  3      OPC=1162  
  callq .__ctype_toupper_loc_plt  #  30    0x401f45  5      OPC=260   
  jmpq .L_401f43                  #  31    0x401f4a  5      OPC=930   
  nop                             #  32    0x401f4f  1      OPC=1343  
  nop                             #  33    0x401f50  1      OPC=1343  
.L_401f3a:                        #        0x401f51  0      OPC=0     
  movzbl (%r15), %ebp             #  34    0x401f51  4      OPC=1302  
  testb %bpl, %bpl                #  35    0x401f55  3      OPC=2440  
  je .L_401f74                    #  36    0x401f58  6      OPC=893   
  nop                             #  37    0x401f5e  1      OPC=1343  
  nop                             #  38    0x401f5f  1      OPC=1343  
.L_401f43:                        #        0x401f60  0      OPC=0     
  movq (%r12), %rcx               #  39    0x401f60  4      OPC=1161  
  movslq (%rcx,%rbx,4), %rcx      #  40    0x401f64  4      OPC=1288  
  movb %bpl, (%r13,%rcx,1)        #  41    0x401f68  5      OPC=1141  
  movzbl (%r14), %r9d             #  42    0x401f6d  4      OPC=1302  
  movq (%rax), %rcx               #  43    0x401f71  3      OPC=1161  
  movzbl (%r15), %r8d             #  44    0x401f74  4      OPC=1302  
  movslq (%rcx,%r9,4), %rcx       #  45    0x401f78  4      OPC=1288  
  movb %r8b, (%r13,%rcx,1)        #  46    0x401f7c  5      OPC=1141  
  addq $0x1, %r14                 #  47    0x401f81  4      OPC=70    
  addq $0x1, %r15                 #  48    0x401f85  4      OPC=70    
  movzbl (%r14), %ebx             #  49    0x401f89  4      OPC=1302  
  testb %bl, %bl                  #  50    0x401f8d  2      OPC=2440  
  jne .L_401f3a                   #  51    0x401f8f  6      OPC=963   
  nop                             #  52    0x401f95  1      OPC=1343  
  nop                             #  53    0x401f96  1      OPC=1343  
.L_401f74:                        #        0x401f97  0      OPC=0     
  xorl %r9d, %r9d                 #  54    0x401f97  3      OPC=3758  
.L_401f77:                        #        0x401f9a  0      OPC=0     
  movl %r9d, %r8d                 #  55    0x401f9a  3      OPC=1157  
  shll $0x8, %r8d                 #  56    0x401f9d  4      OPC=2269  
  movzbl (%r13,%r9,1), %edi       #  57    0x401fa1  6      OPC=1302  
  xorl %eax, %eax                 #  58    0x401fa7  2      OPC=3758  
.L_401f86:                        #        0x401fa9  0      OPC=0     
  leal (%r8,%rax,1), %esi         #  59    0x401fa9  4      OPC=1066  
  movslq %esi, %rsi               #  60    0x401fad  3      OPC=1289  
  movzbl (%r13,%rax,1), %ecx      #  61    0x401fb0  6      OPC=1302  
  shll $0x8, %ecx                 #  62    0x401fb6  3      OPC=2269  
  addl %edi, %ecx                 #  63    0x401fb9  2      OPC=67    
  movw %cx, 0x100(%r13,%rsi,2)    #  64    0x401fbb  9      OPC=1133  
  addq $0x1, %rax                 #  65    0x401fc4  4      OPC=70    
  cmpq $0x100, %rax               #  66    0x401fc8  6      OPC=485   
  jne .L_401f86                   #  67    0x401fce  6      OPC=963   
  nop                             #  68    0x401fd4  1      OPC=1343  
  nop                             #  69    0x401fd5  1      OPC=1343  
  addq $0x1, %r9                  #  70    0x401fd6  4      OPC=70    
  cmpq $0x100, %r9                #  71    0x401fda  7      OPC=474   
  jne .L_401f77                   #  72    0x401fe1  6      OPC=963   
  nop                             #  73    0x401fe7  1      OPC=1343  
  nop                             #  74    0x401fe8  1      OPC=1343  
  addq $0x8, %rsp                 #  75    0x401fe9  4      OPC=70    
  popq %rbx                       #  76    0x401fed  1      OPC=1694  
  popq %rbp                       #  77    0x401fee  1      OPC=1694  
  popq %r12                       #  78    0x401fef  2      OPC=1694  
  popq %r13                       #  79    0x401ff1  2      OPC=1694  
  popq %r14                       #  80    0x401ff3  2      OPC=1694  
  popq %r15                       #  81    0x401ff5  2      OPC=1694  
  retq                            #  82    0x401ff7  1      OPC=1978  
                                                                      
.size init_lookup, .-init_lookup

