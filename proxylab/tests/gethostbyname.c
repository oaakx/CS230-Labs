// #include <sys/socket.h>
#include <stdio.h>
#include <netdb.h>
#include <stddef.h>

int main() {
	struct hostent *hp;
	char hostname[64] = "oaakx.space";

	if ((hp = gethostbyname(hostname)) == NULL) {
		fprintf(stderr, "gethostbyname failed");
		return 0;
	}

	printf("h_length: %d\n", hp->h_length);
	printf("%hhu.", (char)hp->h_addr_list[0][0]);
	printf("%hhu.", (char)hp->h_addr_list[0][1]);
	printf("%hhu.", (char)hp->h_addr_list[0][2]);
	printf("%hhu\n", (char)hp->h_addr_list[0][3]);

	return 0;
}
