---
name: legal-reviewer
description: This skill should be used when the user asks to "review legal document", "review contract", "check legal agreement", "review conveyancing contract", "review lease", "review retail lease", "review commercial lease", "check legal memo", "audit legal document", "check contract terms", or needs to analyze legal documents for accuracy, completeness, and potential issues. This skill MUST invoke the legal-researcher skill when reviewing references to legislation or case law to verify currency and accuracy.
version: 0.1.0
---

# Legal Document Reviewer Skill

## Overview

This skill provides comprehensive review of legal documents with specialized patterns for general contracts, conveyancing documents, and commercial/retail leases. All legal citations are verified through the legal-researcher skill.

## When to Use This Skill

- Reviewing legal advice documents
- Reviewing contracts and agreements
- Checking legal submissions
- Auditing legal memoranda
- Reviewing conveyancing contracts and documents
- Reviewing retail shop leases
- Reviewing commercial leases
- Checking documents containing legal citations

## Mandatory Integration with Legal Researcher

**For every legal citation in the document:**
- Invoke legal-researcher to verify currency
- Check case law has not been overruled
- Confirm legislation has not been amended
- For historical documents: Note what has changed

## Review Methodology

### 1. Structural Review

**Assess:**
- Is the document complete?
- Logical flow and organization?
- All required sections present?
- Internal consistency?
- Clear headings and structure?

### 2. Substantive Review

**Analyze:**
- Legal accuracy (with verification)
- Strength of legal arguments
- Coverage of relevant issues
- Identification of risks/gaps
- Practical implications

### 3. Citation Review

**Verify:**
- Format correctness (AGLC compliance)
- Citation accuracy
- Currency verification (via legal-researcher)
- Authoritative weight appropriate
- All sources traceable

### 4. General Contract Review

**Standard Checklist:**

**Parties and Definitions:**
- Parties correctly identified?
- Definitions section complete?
- Defined terms used consistently?
- Any ambiguous terms?

**Operative Provisions:**
- What is being agreed?
- Obligations clearly stated?
- Performance requirements clear?
- Timeframes specified?
- Payment terms clear?

**Risk Allocation:**
- Liability and indemnity clauses?
- Insurance requirements?
- Limitation of liability?
- Warranties and representations?

**Dispute Resolution:**
- Dispute resolution mechanism?
- Governing law and jurisdiction?
- Notice provisions?

**Termination:**
- Termination rights clearly stated?
- Consequences of termination?
- Surviving obligations?

**Boilerplate:**
- Assignment provisions?
- Entire agreement clause?
- Amendment requirements?
- Severability?
- Counterparts?

### 5. Conveyancing-Specific Review

**For Contracts of Sale (Property):**

**Special Conditions:**
- Finance clause (if applicable)?
- Building and pest inspection clause?
- Sunset clause (off-the-plan)?
- Subject to sale of buyer's property?
- GST provisions?

**Property Details:**
- Title references correct?
- Property description accurate?
- Encumbrances disclosed?
- Easements noted?

**Vendor Disclosure:**
- Section 32 statement (Vic)?
- Contract for sale disclosure (NSW)?
- State-specific disclosure requirements met?
- Material facts disclosed?

**Settlement:**
- Settlement date clear?
- Possession arrangements?
- Adjustments provisions?
- Default interest?

**Compliance:**
- Relevant State legislation:
  - NSW: Conveyancing Act 1919
  - VIC: Sale of Land Act 1962
  - QLD: Property Law Act 1974
  - Each state has different requirements - verify correct state

**Common Issues:**
- Ambiguous special conditions
- Incomplete vendor disclosure
- Unclear settlement provisions
- Missing or inadequate finance clauses
- GST implications not addressed

### 6. Retail Leases Review

**CRITICAL: State-Specific Legislation**

Each state has different retail leases legislation:
- **NSW:** Retail Leases Act 1994
- **VIC:** Retail Leases Act 2003
- **QLD:** Retail Shop Leases Act 1994
- **SA:** Retail and Commercial Leases Act 1995
- **WA:** Commercial Tenancy (Retail Shops) Agreements Act 1985

**Must verify correct state and current provisions.**

**Retail Lease Checklist:**

**Disclosure Compliance:**
- Lessor disclosure statement provided?
- Minimum time period before signing (usually 7 days)?
- Prescribed form used?
- All required matters disclosed?

**Lease Term:**
- Minimum term (NSW: 5 year minimum)?
- Options to renew clearly stated?
- Option exercise requirements?
- Rent review during term?

**Rent and Outgoings:**
- Base rent clearly stated?
- How often reviewed? (fixed, CPI, market)?
- Outgoings cap or estimate provided?
- Outgoings recovery mechanism?
- Prohibition on unconscionable rent increases?

**Permitted Use:**
- Use clearly defined?
- Restrictive enough to protect tenant?
- Broad enough for tenant's needs?

**Fit-Out and Make-Good:**
- Who pays for fit-out?
- Make-good obligations at end?
- Fair and reasonable?
- Photographic schedule of condition?

**Assignment and Subletting:**
- Assignment provisions?
- Lessor consent required?
- Can't be unreasonably withheld?

**Key Retail Lease Issues:**
- Disclosure obligations not met (major issue)
- Unconscionable terms
- Rent review mechanisms unfair
- Make-good obligations excessive
- Outgoings not properly disclosed
- Option terms unclear

### 7. Commercial Leases Review

**Commercial Lease Checklist:**

**Parties:**
- Lessor entity correct?
- Lessee entity (company, trust, individual)?
- Guarantors required?

**Premises:**
- Premises description accurate?
- Floor plans attached?
- Common areas defined?
- Car parking included?

**Term:**
- Commencement date?
- Expiry date?
- Options to renew?
- Holding over provisions?

**Rent:**
- Base rent amount?
- Rent-free periods?
- Rent review mechanism:
  - Fixed increases (e.g., 3% pa)?
  - CPI increases?
  - Market review?
- Review frequency?
- Rent dispute resolution?

**Outgoings:**
- What outgoings recoverable?
- Tenant's proportionate share?
- Cap on increases?
- Disputed outgoings mechanism?

**Rates and Taxes:**
- Who pays land tax?
- Who pays council rates?
- Who pays water rates?

**Maintenance and Repairs:**
- Tenant's repair obligations?
- Lessor's structural obligations?
- Who maintains common areas?
- Who pays for repairs?

**Insurance:**
- Building insurance (lessor)?
- Contents insurance (lessee)?
- Public liability?
- Recovery of premiums?

**Alterations:**
- Can lessee alter premises?
- Lessor consent required?
- Make-good at end?

**Assignment and Subletting:**
- Permitted with consent?
- Criteria for consent?
- Deed of consent required?

**Bank Guarantee:**
- Amount (typically 3-6 months' rent)?
- When returned?
- Form of guarantee?
- Alternative: Security deposit?

**Default and Termination:**
- Events of default clearly stated?
- Notice periods?
- Right to remedy?
- Lessor's rights on default?
- Re-entry provisions?

**Make-Good:**
- Obligations at end of lease?
- Return to original condition?
- Exceptions (fair wear and tear)?
- Lessor-required alterations exempt?
- Dilapidation schedule?

**Key Commercial Lease Issues:**
- Rent review mechanism unclear
- Outgoings recovery unlimited
- Make-good obligations excessive
- Assignment provisions too restrictive
- Repairing obligations ambiguous
- Bank guarantee amount unreasonable
- Default provisions one-sided

### 8. Common Document Issues

**Ambiguities:**
- Unclear terms
- Inconsistent defined terms
- Conflicting provisions
- Vague obligations

**Missing Terms:**
- Essential elements not included
- Incomplete obligations
- Missing standard clauses
- Undefined key terms

**Unfavorable Terms (for Client):**
- One-sided risk allocation
- Excessive liability
- Unreasonable restrictions
- Inadequate protections

**Legal/Compliance Issues:**
- Unenforceable provisions
- Breach of consumer law
- Non-compliance with legislation
- Missing required disclosures

## Review Output Format

### Executive Summary

```
Document: [Document title and type]
Reviewed: [Date]
Overall Assessment: [Low Risk / Medium Risk / High Risk / Critical Issues]

Summary of Findings:
- Critical Issues: [Number] (immediate attention required)
- Important Issues: [Number] (should be addressed)
- Minor Issues: [Number] (consider addressing)
- Observations: [Number] (for information)
```

### Detailed Findings

**Categorize by Severity:**

**Critical Issues** (must be fixed):
- Issue description
- Location in document (clause/page)
- Why critical
- Recommended action

**Important Issues** (should be fixed):
- Issue description
- Location
- Impact
- Recommended action

**Minor Issues** (consider addressing):
- Issue description
- Location
- Impact
- Suggested improvement

**Observations** (for information):
- Note
- Context
- No action required

### Citation Verification

For documents with legal citations:

```
Citations Verified: [Number]
- Current and accurate: [Number]
- Outdated/incorrect: [Number]
- Unable to verify: [Number]

[List any citation issues found]
```

## Tools to Use

- **Read:** Review the document
- **Grep:** Search for specific terms or patterns
- **WebFetch:** Via legal-researcher skill for citation verification
- **Write:** Create review report
- **Edit:** Update existing documents if requested

## Additional Resources

- See `references/review-checklist.md` for comprehensive review methodology
- See `references/contract-review-patterns.md` for general contract guidance
- See `references/conveyancing-patterns.md` for conveyancing-specific guidance
- See `references/leasing-patterns.md` for retail and commercial lease guidance
- See `references/integration-with-researcher.md` for verification workflow
- See `examples/review-report-template.md` for report format
- See `examples/conveyancing-review-template.md` for conveyancing review
- See `examples/lease-review-template.md` for lease review

## Best Practices

1. **Read the entire document first** before detailed review
2. **Verify all legal citations** via legal-researcher skill
3. **Be specific** about issues - reference exact clauses
4. **Prioritize issues** by severity
5. **Provide practical recommendations**
6. **Don't make up issues** that don't exist
7. **Check state-specific requirements** for conveyancing and retail leases
8. **Note what's good** as well as problems
9. **Consider client's perspective** - which party do they represent?
10. **Document verification** - include dates and sources

## Important Disclaimers

- This skill assists with document review but does not replace professional legal judgment
- All reviews should be checked by qualified legal practitioners
- This skill does not constitute legal advice
- Users remain responsible for accuracy and completeness
- Verification of citations is essential but not exhaustive
- State-specific requirements must be confirmed
- Commercial terms subject to negotiation and context

---

**Remember:** A thorough review requires both substantive analysis and verified citations. Always invoke legal-researcher for all legal references. Document your verification process.
