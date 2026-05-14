enum Planet {
  merkurius('Merkurius', 0.387, 3.70),
  venus('Venus', 0.723, 8.87),
  bumi('Bumi', 1.000, 9.81),
  mars('Mars', 1.524, 3.72);

  final String nama;
  final double jarakAU;
  final double gravitasi;

  const Planet(this.nama, this.jarakAU, this.gravitasi);
}
