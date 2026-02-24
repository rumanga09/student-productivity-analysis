-- ==========================================
-- Productivity Segmentation Query
-- ==========================================

SELECT
    CASE
        WHEN productivity_score < 40 THEN 'Low'
        WHEN productivity_score BETWEEN 40 AND 70 THEN 'Medium'
        ELSE 'High'
    END AS productivity_group,
    ROUND(AVG(sleep_hours),2) AS avg_sleep,
    ROUND(AVG(phone_usage_hours),2) AS avg_phone_usage,
    ROUND(AVG(stress_level),2) AS avg_stress
FROM ai_analytics.student_productivity
GROUP BY productivity_group
ORDER BY productivity_group;


-- ==========================================
-- Total Digital Distraction by Segment
-- ==========================================

SELECT
    CASE
        WHEN productivity_score < 40 THEN 'Low'
        WHEN productivity_score BETWEEN 40 AND 70 THEN 'Medium'
        ELSE 'High'
    END AS productivity_group,
    ROUND(AVG(
        phone_usage_hours +
        social_media_hours +
        youtube_hours +
        gaming_hours
    ),2) AS avg_total_distraction
FROM ai_analytics.student_productivity
GROUP BY productivity_group
ORDER BY productivity_group;


-- ==========================================
-- Correlation Checks
-- ==========================================

SELECT 
    corr(sleep_hours, productivity_score) AS corr_sleep_productivity,
    corr(phone_usage_hours, productivity_score) AS corr_phone_productivity,
    corr(stress_level, productivity_score) AS corr_stress_productivity
FROM ai_analytics.student_productivity;
