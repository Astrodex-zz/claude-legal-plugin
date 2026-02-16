# Legal Assistant Plugin

A comprehensive Claude Code plugin for Australian legal work, providing rigorous primary source verification to minimize hallucination risks.

## Overview

The Legal Assistant plugin provides three interconnected skills and a citation verification agent for Australian legal research, advice drafting, and document review. The plugin emphasizes accuracy through mandatory verification of all legal authorities against primary sources.

**Version:** 0.1.0
**Author:** Bird
**Jurisdiction:** Australian law (Commonwealth and all States/Territories)

## Features

### Three Core Skills

1. **Legal Researcher** - Verify legislation and case law against primary sources
2. **Legal Adviser** - Draft legal advice and submissions with verified citations
3. **Legal Document Reviewer** - Review contracts and legal documents, including conveyancing and leasing

### One Specialized Agent

- **Citation Verifier** - Batch verification of multiple citations in documents

### Anti-Hallucination Architecture

- Mandatory primary source verification
- Multi-source cross-checking (AustLII, jade.io, court websites, legislation databases)
- Full text judgment reading required
- Judicial consideration checking
- Explicit uncertainty handling

## Installation

The plugin should be located at: `~/.claude/plugins/legal-assistant/`

**Quick install (from the plugin directory):**

- **Linux/macOS:** `bash install.sh`
- **Windows (PowerShell):** `.\install.ps1`

The install script copies the plugin into place, registers it in `installed_plugins.json`, and enables it in `settings.json`. Restart Claude Code after running.

## Skills

### 1. Legal Researcher

**When to use:**
- "Verify this legislation"
- "Check if this case has been overruled"
- "Find the current status of [case]"
- "Verify exact wording of [statute]"
- Before citing any legal authority

**What it does:**
- Accesses primary sources (AustLII, jade.io, legislation databases, court websites)
- Reads full text of judgments
- Checks judicial consideration
- Verifies legislation currency
- Provides verified citations with URLs and dates

**Example:**
```
User: "Please verify section 180 of the Corporations Act and check the current status of ASIC v Healey"

Claude: [Invokes legal-researcher skill]
- Verifies Corporations Act 2001 (Cth) s 180(1) is current
- Confirms ASIC v Healey [2011] FCA 717 is good law
- Provides exact wording and citations
- Includes verification dates and source URLs
```

### 2. Legal Adviser

**When to use:**
- "Draft legal advice about [topic]"
- "Prepare a legal submission for [matter]"
- "Write a legal opinion on [issue]"
- "Create legal memorandum regarding [subject]"

**What it does:**
- Structures legal advice professionally
- Integrates with legal-researcher to verify all citations
- Provides clear analysis with verified authorities
- Includes verification information in footnotes
- Follows Australian legal citation standards (AGLC 4th ed)

**Example:**
```
User: "Draft advice about a director's potential breach of duty"

Claude: [Invokes legal-adviser skill]
1. Identifies relevant authorities (s 180 Corporations Act, relevant cases)
2. Invokes legal-researcher to verify each authority
3. Drafts advice with:
   - Executive summary
   - Background
   - Legal analysis with verified citations
   - Conclusion and recommendations
   - All citations include verification dates
```

### 3. Legal Document Reviewer

**When to use:**
- "Review this contract"
- "Check this conveyancing contract"
- "Review this retail lease"
- "Review this commercial lease"
- "Audit the legal citations in this document"

**What it does:**
- Comprehensive document review
- Verifies all legal citations via legal-researcher skill
- Specialized patterns for:
  - General contracts
  - Conveyancing contracts and documents
  - Retail shop leases (state-specific)
  - Commercial leases
- Identifies issues categorized by severity
- Produces detailed review report

**Example:**
```
User: "Review this NSW retail lease"

Claude: [Invokes legal-reviewer skill]
1. Reviews lease structure and terms
2. Checks NSW Retail Leases Act 1994 compliance
3. Verifies lessor disclosure requirements met
4. Reviews rent review, outgoings, make-good clauses
5. Identifies any unfavorable or non-compliant terms
6. Produces categorized review report
```

## Agent

### Citation Verifier Agent

**When to use:**
- Document has 5+ legal citations
- Need to audit all citations in a document
- Batch verification required

**What it does:**
- Identifies all citations in document
- Systematically verifies each via legal-researcher skill
- Produces comprehensive verification report
- Categorizes issues by severity

**Example:**
```
User: "Please verify all citations in this legal advice document"

Claude: [Invokes citation-verifier agent]
Agent:
1. Reads document
2. Extracts all legislation and case law citations
3. Verifies each citation via legal-researcher skill
4. Produces verification report showing:
   - Citations verified and current
   - Citations with issues (overruled, amended, incorrect)
   - Recommendations for corrections
```

## Primary Sources Used

### Case Law
- **AustLII** (www.austlii.edu.au) - Comprehensive Australian case law
- **Jade.io** (jade.io) - Enhanced judicial consideration tools
- **Court Websites** - High Court, Federal Court, State Supreme Courts

### Legislation
- **Commonwealth**: legislation.gov.au
- **NSW**: legislation.nsw.gov.au
- **VIC**: legislation.vic.gov.au
- **QLD**: legislation.qld.gov.au
- **SA**: legislation.sa.gov.au
- **WA**: legislation.wa.gov.au
- **TAS**: legislation.tas.gov.au
- **NT**: legislation.nt.gov.au
- **ACT**: legislation.act.gov.au

## Usage Examples

### Example 1: Verifying a Case

```
User: "Is Donoghue v Stevenson still good law?"

Claude uses legal-researcher skill:
1. Locates case on AustLII
2. Reads full judgment
3. Checks judicial consideration
4. Verifies never overruled
5. Reports: "Good law - foundational authority"
```

### Example 2: Drafting Advice

```
User: "Draft advice about a retail lease disclosure issue in NSW"

Claude uses legal-adviser skill:
1. Invokes legal-researcher to verify:
   - Retail Leases Act 1994 (NSW) ss 11, 13
   - Current regulations
2. Drafts advice with:
   - Analysis of disclosure requirements
   - Application to client's facts
   - Verified citations with dates
   - Recommendations
```

### Example 3: Reviewing a Contract

```
User: "Review this commercial lease"

Claude uses legal-reviewer skill:
1. Reviews lease structure and completeness
2. Checks rent review mechanisms
3. Reviews outgoings provisions
4. Assesses make-good clauses
5. Identifies any unfavorable terms
6. Produces categorized review report
```

### Example 4: Batch Citation Verification

```
User: "Verify all citations in this 20-page legal submission"

Claude uses citation-verifier agent:
1. Extracts all 35 citations
2. Verifies each via legal-researcher
3. Identifies:
   - 32 current and correct
   - 2 cases distinguished (minor)
   - 1 legislation section amended (important)
4. Produces detailed verification report
```

## Key Features

### Anti-Hallucination Safeguards

1. **Never cite from memory** - All authorities verified against primary sources
2. **Multi-source verification** - Cross-check between databases
3. **Full text reading** - Never rely on headnotes or summaries for case law
4. **Judicial consideration** - Check if cases overruled, distinguished, or questioned
5. **Currency checking** - Verify legislation is current version
6. **Explicit uncertainty** - If unable to verify, clearly state limitation
7. **Documentation** - All verification includes dates and source URLs

### Jurisdiction Coverage

- **Commonwealth** - Federal legislation and court decisions
- **All States/Territories** - NSW, VIC, QLD, SA, WA, TAS, NT, ACT
- **State-specific guidance** - Conveyancing and retail leases vary by state

### Specialized Knowledge

**Conveyancing:**
- Contracts of sale
- Vendor disclosure requirements
- Special conditions
- State-specific compliance

**Leasing:**
- Retail Leases Acts (all states)
- Commercial leases
- Disclosure requirements
- Make-good provisions
- Rent review mechanisms

## Best Practices

1. **Always verify before citing** - Use legal-researcher skill before any legal reference
2. **Check state jurisdiction** - Especially for conveyancing and retail leases
3. **Read full context** - Don't rely on snippets or summaries
4. **Document verification** - Include dates and sources in all work
5. **Cross-check multiple sources** - Use AustLII, jade.io, and official databases
6. **Note limitations** - Be explicit if verification incomplete
7. **Update regularly** - Re-verify authorities for ongoing matters

## Known Limitations

1. **Internet Required** - WebFetch needs access to online databases
2. **Subscription Services** - Jade.io may require subscription for full features
3. **Read-Only** - Cannot access paid databases (Lexis, Westlaw)
4. **Australian Focus** - Designed for Australian law only
5. **Verification Timing** - Very recent cases may not be on databases yet
6. **Manual Research May Be Needed** - Some sources may require manual legal research
7. **State Variations** - Conveyancing and leasing law varies significantly by state
8. **Not Legal Advice** - Tool assists but does not constitute legal advice

## Verification Output Format

All verified authorities include:
- **Full citation** (AGLC 4th ed format)
- **Source URLs** (all databases checked)
- **Verification date**
- **Current status** (for case law)
- **Version information** (for legislation)
- **Any qualifications or notes**

Example:
```
Corporations Act 2001 (Cth) s 180(1)
URL: www.legislation.gov.au/[path]
Version: Compilation No. 140, as at 1 January 2024
Verified: 4 February 2026
Status: Current - in force
```

## Troubleshooting

**"Legal-researcher skill not being invoked":**
- Ensure you're using trigger phrases like "verify", "check", "research"
- Explicitly request verification in your prompt

**"Cannot access jade.io":**
- May require subscription
- Use AustLII as primary alternative
- Plugin will note jade.io not accessible

**"State legislation not found":**
- Verify correct state database URL
- Some older legislation may not be online
- Try AustLII as alternative

**"Case not on AustLII":**
- Very recent cases may not be uploaded yet
- Try court website directly
- Check if case is reported

## Support and Feedback

This plugin is designed to assist with Australian legal research and drafting. It does not replace professional legal judgment or constitute legal advice.

For issues or questions:
- Review the comprehensive reference guides in each skill's `references/` directory
- Check example workflows in `examples/` directories
- Ensure internet access for primary source verification

## Disclaimer

**IMPORTANT:**

- This plugin assists with legal research and drafting but does NOT constitute legal advice
- All work must be reviewed by qualified legal practitioners
- Users remain responsible for accuracy and appropriateness of their legal work
- Verification of primary sources is essential but not exhaustive
- This tool does not replace professional legal judgment
- State-specific requirements must be independently confirmed
- The plugin assists with verification but errors may still occur
- Always exercise professional judgment and conduct independent verification

## License

Copyright © 2026 Bird. All rights reserved.

---

**Version:** 0.1.0
**Last Updated:** 4 February 2026
**Jurisdiction:** Australian Law (Commonwealth and States/Territories)
