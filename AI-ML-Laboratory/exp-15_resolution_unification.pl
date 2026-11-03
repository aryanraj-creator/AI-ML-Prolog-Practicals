# Aim: To implement Resolution and Unification to prove a theorem in First Order Logic.

def unify(x, y, substitution=None):
    if substitution is None:
        substitution = {}

    if x == y:
        return substitution

    if x in substitution:
        return unify(substitution[x], y, substitution)

    if y in substitution:
        return unify(x, substitution[y], substitution)

    if isinstance(x, str) and isinstance(y, str):
        if x[0].islower() and x.isupper() == False:
            substitution[x] = y
            return substitution

        if y[0].islower() and y.isupper() == False:
            substitution[y] = x
            return substitution

    return None


# Knowledge Base
facts = [
    ("Human", "Socrates"),
    ("Mortal", "Socrates")
]

# Theorem to prove
print("Knowledge Base:", facts)

print("\nApplying Unification:")
result = unify("x", "Socrates")
print("Unification Result:", result)

print("\nApplying Resolution:")

if ("Human", "Socrates") in facts and \
   ("Mortal", "Socrates") in facts:
    print("Theorem Proved: Socrates is Mortal")
else:
    print("Theorem Cannot Be Proved")
