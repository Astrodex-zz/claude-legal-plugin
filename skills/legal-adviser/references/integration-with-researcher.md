# Integration with Legal-Researcher Skill

## Overview

The legal-adviser skill MUST integrate with legal-researcher for all legal citations. This ensures accuracy and currency of all legal references.

## When to Invoke Legal-Researcher

### Before Drafting (Recommended)

**Best Practice:**
Identify all authorities you'll likely need and verify them before starting to draft.

**Example:**
"I'm preparing advice on retail lease disclosure obligations in NSW. Please verify:
1. Retail Leases Act 1994 (NSW) ss 11, 13
2. Retail Leases Regulation 2022 (NSW) Schedule 1
3. Current status of both"

### During Drafting (Acceptable)

As you identify need for authorities, pause and verify:

**Example:**
"I need to cite the case establishing the neighbour principle. Please verify Donoghue v Stevenson and confirm current status."

### After Drafting (Not Recommended)

Verify all citations before finalizing, but this approach risks having to redraft if authorities are not current.

## How to Request Verification

### Clear Requests

**Good:**
"Please verify section 180(1) of the Corporations Act 2001 (Cth) - I need exact wording and confirmation it's current."

**Better:**
"Please verify:
1. Corporations Act 2001 (Cth) s 180(1) - exact wording, current status
2. ASIC v Healey [2011] FCA 717 - principle re directors' duties, check not overruled
Return verified citations ready for insertion in advice."

**Best:**
"I'm drafting advice on directors' duties regarding financial oversight. Please verify all of the following and provide formatted citations:
1. Corporations Act 2001 (Cth) s 180(1) - care and diligence duty
2. ASIC v Healey [2011] FCA 717 - reasonable steps requirement
3. Any recent High Court cases on s 180
Confirm all are current and provide any relevant qualifications."

### What to Request

For each authority:
- Full citation
- Exact wording (for legislation)
- Current status (for case law)
- Any limitations or qualifications
- Formatted ready for footnote insertion

## Incorporating Verified Citations

### Standard Format

**In Text:**
```
Section 180(1) of the Corporations Act 2001 (Cth) requires directors to exercise care and diligence.¹
```

**In Footnote:**
```
¹ Corporations Act 2001 (Cth) s 180(1). Verified [date] via legislation.gov.au, as at [compilation date].
```

### With Quotation

**In Text:**
```
In ASIC v Healey, the Federal Court held that directors "must take reasonable steps in a timely way to be satisfied that information included in [financial statements] is accurate".²
```

**In Footnote:**
```
² Australian Securities and Investments Commission v Healey (2011) 196 FCR 291; [2011] FCA 717 at [196] (Middleton J). Verified [date] via AustLII - good law, consistently applied.
```

## Handling Verification Results

### Good Law

Proceed with citation as verified.

### Questioned or Overruled

**Don't cite.** Return to legal-researcher:
"What is the current authority on [principle]? [Case] appears to have been overruled."

### Distinguished

Consider whether distinguishable facts affect your case. May still cite with qualification:
"In [Case], the court held [principle], although that case involved [distinguishing feature]."

### Unable to Verify

**Don't cite.** Either:
1. Find alternative authority
2. Note limitation in advice
3. Recommend manual legal research

## Workflow Examples

### Example 1: Simple Advice

**Step 1: Identify Authorities Needed**
- Retail Leases Act 1994 (NSW) ss 11, 13

**Step 2: Request Verification**
"Please verify Retail Leases Act 1994 (NSW) sections 11 and 13 regarding lessor disclosure requirements."

**Step 3: Wait for Verification**
Receive verified text and current status.

**Step 4: Draft with Verified Citations**
Insert exact wording and verification information in footnotes.

### Example 2: Complex Advice with Multiple Authorities

**Step 1: List All Potential Authorities**
- Corporations Act provisions
- 3-4 relevant cases
- Any regulations

**Step 2: Batch Verification Request**
"Please verify all of the following authorities for advice on directors' duties:
1. Corporations Act 2001 (Cth) s 180(1)
2. ASIC v Healey [2011] FCA 717
3. Daniels v AWA (1995) 37 NSWLR 438
4. Any relevant regulations under Corporations Act"

**Step 3: Review Verification Results**
Check all are current. If any issues, follow up with legal-researcher.

**Step 4: Draft Advice**
Use verified authorities with confidence, including all verification information.

## Quality Control

### Before Finalizing Advice

Checklist:
- [ ] All legislation verified?
- [ ] All cases verified?
- [ ] Verification dates included in footnotes?
- [ ] Current status noted for case law?
- [ ] "As at" dates noted for legislation?
- [ ] No citations from memory?
- [ ] All authorities actually support propositions cited for?

## Integration Pattern Summary

```
IDENTIFY → REQUEST VERIFICATION → WAIT → RECEIVE → INCORPORATE → DOCUMENT
```

1. **Identify** what authorities you need
2. **Request** verification from legal-researcher skill
3. **Wait** for complete verification (don't proceed without it)
4. **Receive** verified citations and status
5. **Incorporate** into advice with proper formatting
6. **Document** verification information in footnotes

## Common Mistakes to Avoid

**DON'T:**
- ❌ Draft first, verify later
- ❌ Cite from memory "just this once"
- ❌ Skip verification for "well-known" cases
- ❌ Assume old research is still current
- ❌ Proceed if verification shows problems
- ❌ Omit verification information from footnotes

**DO:**
- ✅ Verify before or during drafting
- ✅ Verify every single citation
- ✅ Include verification dates
- ✅ Note current status
- ✅ Follow up on any verification issues
- ✅ Document all verification information

By consistently integrating with legal-researcher skill, you ensure all legal advice is built on verified, current authority - the foundation of reliable legal work.
