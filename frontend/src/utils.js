const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$/;

export function isPasswordValid(password) {
    return passwordRegex.test(password);
}
