import java.lang.Math;
public class PrimosEnRango{
	public static void main(String[] args){
		long i=2L;
		final long F=100L;

		if(i<=2)System.out.println(2);
		if(i%2==0) i++;
		while(i<=F){
			if(esPrimo(i))
				System.out.println(i);
			i+=2;
		}
	}
	public static boolean esPrimo(long x){
		long i=3L;
		final long SQRT=(long) Math.sqrt(x);
		while(i<=SQRT){
			if(x%i==0)
				return false;
			i+=2;
		}
		return true;
	}
}
