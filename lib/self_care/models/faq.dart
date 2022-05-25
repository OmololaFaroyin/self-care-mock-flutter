class FAQ {
  final String q;
  final String a;
  FAQ({
    required this.q,
    required this.a,
  });
}

List<FAQ> faqList = [
  FAQ(q: "Can i add multiple admins?", a: loremIpsum),
  FAQ(q: "What is the differenece between sales and orders?", a: loremIpsum),
  FAQ(q: "Who are sellers?", a: loremIpsum),
  FAQ(q: "Who are buyers?", a: loremIpsum),
  FAQ(q: "How much is dukka dervices?", a: loremIpsum),
  FAQ(q: "Can i add multiple admins?", a: loremIpsum),
  FAQ(q: "Can i add multiple admins?", a: loremIpsum),
  FAQ(q: "Can i add multiple admins?", a: loremIpsum),
  FAQ(q: "Can i add multiple admins?", a: loremIpsum),
  FAQ(q: "Can i add multiple admins?", a: loremIpsum),
];

const loremIpsum =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus in sem risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam hendrerit velit non interdum iaculis.';
