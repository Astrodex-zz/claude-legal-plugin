---
name: legal-adviser
description: This skill should be used when the user asks to "draft legal advice", "write legal submission", "provide legal opinion", "draft legal memorandum", "advise on legal issue", "write advice to client", "prepare legal assessment", or needs to create formal legal advice documents. This skill MUST invoke the legal-researcher skill whenever references to legislation or case law are made to ensure all citations are verified and current.
version: 0.1.0
---

# Legal Adviser Skill

## Overview

This skill guides the drafting of formal legal advice and submissions with emphasis on accuracy, verified citations, and professional standards. All legal references must be verified through the legal-researcher skill before inclusion.

## When to Use This Skill

- Drafting legal advice to clients
- Preparing legal submissions (court, tribunal, or administrative)
- Writing legal memoranda
- Providing formal legal opinions
- Creating legal assessments or analyses

## Mandatory Integration with Legal Researcher

**CRITICAL REQUIREMENT:**
Before citing ANY legislation or case law, you MUST invoke the legal-researcher skill to verify:
- Current status of case law (not overruled)
- Exact wording of legislation
- Currency of legal authorities
- Proper citations

**Never cite from memory. Always verify.**

## Workflow for Drafting Legal Advice

### 1. Understand Instructions

**Clarify:**
- Who is the client?
- What is the specific legal question?
- What facts are relevant?
- What outcome does client seek?
- Any time or scope limitations?

### 2. Analyze Facts and Issues

**Identify:**
- Material facts
- Legal issues arising
- Applicable areas of law
- Relevant jurisdiction(s)

### 3. Research (via Legal-Researcher Skill)

**Before drafting, invoke legal-researcher for:**
- Relevant legislation
- Applicable case law
- Any authorities you plan to cite

**Example:**
"I need to draft advice about director's duties. Please verify:
- Section 180(1) of the Corporations Act 2001 (Cth)
- ASIC v Healey [2011] FCA 717
- Current status of both"

Wait for verification before proceeding.

### 4. Draft Advice Structure

**Standard Structure:**

**Executive Summary**
- Brief answer to the question
- Key conclusions
- 2-3 paragraphs maximum
- Can be read standalone

**Background/Facts**
- Relevant facts only
- Chronological or thematic order
- Distinguish between assumed and established facts
- Note any gaps or uncertainties

**Issues**
- List legal questions to be addressed
- In logical order
- Clear and specific

**Legal Analysis**
- For each issue:
  - State applicable law (with verified citations)
  - Apply law to facts
  - Address counterarguments
  - Reach preliminary conclusion

**Conclusion and Recommendations**
- Clear answers to issues raised
- Practical recommendations
- Risk assessment if relevant
- Next steps

**Limitations and Assumptions**
- Note any assumptions made
- Scope limitations
- Areas not covered
- Disclaimers

### 5. Incorporate Verified Citations

**When inserting verified citations:**

**For legislation:**
```
Section 180(1) of the Corporations Act 2001 (Cth) provides that a director must exercise their powers with the degree of care and diligence that a reasonable person would exercise in the circumstances.¹

---
¹ Corporations Act 2001 (Cth) s 180(1). Verified 4 February 2026 via legislation.gov.au (current as at 1 January 2024).
```

**For case law:**
```
In ASIC v Healey,² the Federal Court held that directors must take reasonable steps to ensure financial statements are accurate and cannot simply rely on management.

---
² Australian Securities and Investments Commission v Healey (2011) 196 FCR 291; [2011] FCA 717 at [194]-[196] (Middleton J). Verified 4 February 2026 via AustLII - good law, consistently applied.
```

### 6. Quality Review

**Check:**
- All legal citations verified?
- Verification dates included?
- Analysis clear and logical?
- Advice answers the question asked?
- Professional tone maintained?
- No ambiguous statements?
- Limitations clearly stated?

## Best Practices

### Legal Analysis

**1. Be Clear and Direct**
- Use plain English where possible
- Explain legal concepts
- Avoid unnecessary jargon
- Be specific, not vague

**2. Address Counterarguments**
- Consider alternative views
- Explain why you prefer your analysis
- Note areas of uncertainty
- Don't ignore contrary authority

**3. Apply Law to Facts**
- Don't just state the law
- Show how it applies to these specific facts
- Explain reasoning step-by-step
- Make connections explicit

**4. Qualification and Hedging**
- Use "likely", "probably", "arguably" where appropriate
- Distinguish between strong and weak arguments
- Note where law is unclear or developing
- Be honest about uncertainties

**Examples:**
- Strong: "Section 180 requires..."
- Moderate: "It is likely that a court would find..."
- Weak: "There is an argument that..."
- Uncertain: "The law in this area is unclear, but..."

### Professional Standards

**Tone:**
- Professional but accessible
- Confident where warranted, careful where uncertain
- Respectful of counterarguments
- Client-focused

**Structure:**
- Logical flow
- Clear headings and subheadings
- Numbered paragraphs for ease of reference
- Short paragraphs (3-5 sentences)

**Formatting:**
- Consistent citation style (AGLC 4th ed)
- Footnotes for citations
- Tables or bullet points for clarity where appropriate

## Drafting Legal Submissions

**Additional Considerations for Submissions:**

### Persuasive Writing

- Lead with strongest arguments
- Emphasize favorable facts
- Distinguish unfavorable authority
- Propose specific relief sought

### Court/Tribunal Requirements

- Check practice directions
- Follow required format
- Include all required elements
- Meet word limits
- Proper court/tribunal headings

### Submissions Structure

**Typical Format:**
1. Introduction - what you're asking for
2. Summary of argument
3. Facts - presented favorably but honestly
4. Law and argument - detailed legal analysis
5. Conclusion - specific relief sought

## Verification Requirements

**Every Legal Authority Must Show:**

1. **Verification date**
2. **Source checked** (AustLII, jade.io, legislation.gov.au, etc.)
3. **Current status** (for case law: good law, overruled, distinguished, etc.)
4. **Version information** (for legislation: as at date, compilation number)

**Example Footnote:**
```
³ Corporations Act 2001 (Cth) s 180(1). Verified 4 February 2026 via legislation.gov.au, Compilation No. 140 as at 1 January 2024.
```

## Common Pitfalls to Avoid

1. **Citing unverified authorities** - Always use legal-researcher skill first
2. **Overconfident predictions** - Qualify appropriately
3. **Ignoring contrary authority** - Address it, don't hide it
4. **Failing to apply law to facts** - Analysis must be specific
5. **Ambiguous advice** - Be clear about what you're saying
6. **Scope creep** - Stay within instructions
7. **Outdated law** - Verify currency
8. **Missing limitations** - State assumptions and scope clearly
9. **Poor structure** - Use clear headings and logical flow
10. **Forgetting the client** - Answer the actual question asked

## Tools to Use

- **Read:** Review background documents, prior advice, contracts
- **Grep:** Search for relevant terms in documents
- **WebFetch:** Via legal-researcher skill only (not directly)
- **Write:** Create the advice document
- **Edit:** Refine and update drafts

## Additional Resources

- See `references/advice-drafting-standards.md` for detailed professional writing standards
- See `references/advice-structure.md` for comprehensive structural guidance
- See `references/integration-with-researcher.md` for workflow integration patterns
- See `examples/advice-template.md` for template legal advice
- See `examples/submission-template.md` for template legal submission

## Important Disclaimers

- This skill assists with drafting legal advice but does not replace professional legal judgment
- All advice must be reviewed by qualified legal practitioners
- This skill does not constitute legal advice itself
- Users remain responsible for accuracy and appropriateness of their work
- Verification of authorities is essential but not a substitute for legal analysis
- Advice should be tailored to specific client circumstances

---

**Remember:** The quality of legal advice depends on verified authority and clear analysis. Always verify through legal-researcher skill before citing. Better to delay for verification than to cite incorrectly.
