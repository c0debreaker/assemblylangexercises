# Assembly Language Exercises

## Building programs

### To compile

```sh
nasm -f elf32 -o exer1.o exer1.asm
```

### Then link it

```sh
ld -m elf_i386 exer1.o -o exer1
```

### Then run it

```sh
./exer1
```

## When linking an assembly code that doesn't have any C library, you must remove the headers being added by gcc

```sh
gcc -m64 -ggdb -nostdlib -no-pie exer10.o -o exer10
```
