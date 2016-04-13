run: main.fasl
	@sbcl --noinform --load "main.cl" --quit --end-toplevel-options "main.fasl"

main.fasl: main.cl
	@sbcl --noinform --eval "(compile-file \"main.cl\")" --eval "(quit)" > /dev/null
